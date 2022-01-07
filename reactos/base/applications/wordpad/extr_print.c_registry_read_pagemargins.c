
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,int *,int ,int*) ;
 int SetRect (int *,int,int,int,int) ;
 int margins ;
 int var_pagemargin ;

void registry_read_pagemargins(HKEY hKey)
{
    DWORD size = sizeof(RECT);

    if(!hKey || RegQueryValueExW(hKey, var_pagemargin, 0, ((void*)0), (LPBYTE)&margins,
                     &size) != ERROR_SUCCESS || size != sizeof(RECT))
        SetRect(&margins, 1757, 1417, 1757, 1417);
}
