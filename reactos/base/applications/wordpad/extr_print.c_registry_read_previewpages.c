
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pages_shown; } ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,int *,int ,int*) ;
 TYPE_1__ preview ;
 int var_previewpages ;

void registry_read_previewpages(HKEY hKey)
{
    DWORD size = sizeof(DWORD);
    if(!hKey ||
       RegQueryValueExW(hKey, var_previewpages, 0, ((void*)0),
                        (LPBYTE)&preview.pages_shown, &size) != ERROR_SUCCESS ||
       size != sizeof(DWORD))
    {
        preview.pages_shown = 1;
    } else {
        if (preview.pages_shown < 1) preview.pages_shown = 1;
        else if (preview.pages_shown > 2) preview.pages_shown = 2;
    }
}
