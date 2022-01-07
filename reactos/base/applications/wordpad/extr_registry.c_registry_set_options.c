
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__ showCmd; int rcNormalPosition; } ;
typedef TYPE_1__ WINDOWPLACEMENT ;
typedef int RECT ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int GetWindowPlacement (int ,TYPE_1__*) ;
 int REG_BINARY ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 scalar_t__ SW_SHOWMAXIMIZED ;
 int key_options ;
 int key_settings ;
 scalar_t__ registry_get_handle (int *,int*,int ) ;
 int registry_set_pagemargins (int ) ;
 int registry_set_previewpages (int ) ;
 int var_framerect ;
 int var_maximized ;

void registry_set_options(HWND hMainWnd)
{
    HKEY hKey = 0;
    DWORD action;

    if(registry_get_handle(&hKey, &action, key_options) == ERROR_SUCCESS)
    {
        WINDOWPLACEMENT wp;
        DWORD isMaximized;

        wp.length = sizeof(WINDOWPLACEMENT);
        GetWindowPlacement(hMainWnd, &wp);
        isMaximized = (wp.showCmd == SW_SHOWMAXIMIZED);

        RegSetValueExW(hKey, var_framerect, 0, REG_BINARY, (LPBYTE)&wp.rcNormalPosition, sizeof(RECT));
        RegSetValueExW(hKey, var_maximized, 0, REG_DWORD, (LPBYTE)&isMaximized, sizeof(DWORD));

        registry_set_pagemargins(hKey);
        RegCloseKey(hKey);
    }

    if(registry_get_handle(&hKey, &action, key_settings) == ERROR_SUCCESS)
    {
        registry_set_previewpages(hKey);
        RegCloseKey(hKey);
    }
}
