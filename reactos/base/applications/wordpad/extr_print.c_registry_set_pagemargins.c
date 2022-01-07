
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPBYTE ;
typedef int HKEY ;


 int REG_BINARY ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 int margins ;
 int var_pagemargin ;

void registry_set_pagemargins(HKEY hKey)
{
    RegSetValueExW(hKey, var_pagemargin, 0, REG_BINARY, (LPBYTE)&margins, sizeof(RECT));
}
