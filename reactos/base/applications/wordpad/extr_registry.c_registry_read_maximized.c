
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,int *,int ,int*) ;
 int key_options ;
 scalar_t__ registry_get_handle (int *,int ,int ) ;
 int var_maximized ;

void registry_read_maximized(DWORD *bMaximized)
{
    HKEY hKey = 0;
    DWORD size = sizeof(DWORD);

    if(registry_get_handle(&hKey, 0, key_options) != ERROR_SUCCESS ||
       RegQueryValueExW(hKey, var_maximized, 0, ((void*)0), (LPBYTE)bMaximized, &size) !=
       ERROR_SUCCESS || size != sizeof(DWORD))
    {
        *bMaximized = FALSE;
    }

    RegCloseKey(hKey);
}
