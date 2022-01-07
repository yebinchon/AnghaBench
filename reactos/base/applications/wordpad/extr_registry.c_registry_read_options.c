
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int RegCloseKey (int *) ;
 int key_options ;
 int key_settings ;
 scalar_t__ registry_get_handle (int **,int ,int ) ;
 int registry_read_pagemargins (int *) ;
 int registry_read_previewpages (int *) ;

void registry_read_options(void)
{
    HKEY hKey;

    if(registry_get_handle(&hKey, 0, key_options) != ERROR_SUCCESS)
        registry_read_pagemargins(((void*)0));
    else
    {
        registry_read_pagemargins(hKey);
        RegCloseKey(hKey);
    }

    if(registry_get_handle(&hKey, 0, key_settings) != ERROR_SUCCESS) {
        registry_read_previewpages(((void*)0));
    } else {
        registry_read_previewpages(hKey);
        RegCloseKey(hKey);
    }
}
