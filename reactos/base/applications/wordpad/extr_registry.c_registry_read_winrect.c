
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,int *,int ,int*) ;
 int SetRect (int *,int ,int ,int,int) ;
 int key_options ;
 scalar_t__ registry_get_handle (int *,int ,int ) ;
 int var_framerect ;

void registry_read_winrect(RECT* rc)
{
    HKEY hKey = 0;
    DWORD size = sizeof(RECT);

    if(registry_get_handle(&hKey, 0, key_options) != ERROR_SUCCESS ||
       RegQueryValueExW(hKey, var_framerect, 0, ((void*)0), (LPBYTE)rc, &size) !=
       ERROR_SUCCESS || size != sizeof(RECT))
        SetRect(rc, 0, 0, 600, 300);

    RegCloseKey(hKey);
}
