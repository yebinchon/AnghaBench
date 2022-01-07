
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pages_shown; } ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 int REG_DWORD ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 TYPE_1__ preview ;
 int var_previewpages ;

void registry_set_previewpages(HKEY hKey)
{
    RegSetValueExW(hKey, var_previewpages, 0, REG_DWORD,
                   (LPBYTE)&preview.pages_shown, sizeof(DWORD));
}
