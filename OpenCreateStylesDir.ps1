$folderPath = "$env:APPDATA\QtProject\qtcreator\styles"

if (-not (Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath -Force
}

Invoke-Item -Path $folderPath

# 暂停并等待用户按下任意键
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp")