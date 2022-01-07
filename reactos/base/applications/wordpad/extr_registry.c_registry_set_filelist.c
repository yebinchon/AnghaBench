
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int cbSize; scalar_t__ dwItemData; int fMask; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int HWND ;
typedef int HMENU ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FILELIST_ENTRIES ;
 int GetMenu (int ) ;
 scalar_t__ GetMenuItemInfoW (int ,scalar_t__,int ,TYPE_1__*) ;
 scalar_t__ ID_FILE_RECENT1 ;
 int MIIM_DATA ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegSetValueExW (int ,int *,int ,int ,int const*,int) ;
 int key_recentfiles ;
 scalar_t__ lstrcmpiW (int *,int *) ;
 int lstrlenW (int *) ;
 scalar_t__ registry_get_handle (int *,int *,int ) ;
 int registry_read_filelist (int ) ;
 int var_file ;
 int wsprintfW (int *,int ,int) ;

void registry_set_filelist(LPCWSTR newFile, HWND hMainWnd)
{
    HKEY hKey;
    DWORD action;

    if(registry_get_handle(&hKey, &action, key_recentfiles) == ERROR_SUCCESS)
    {
        LPCWSTR pFiles[FILELIST_ENTRIES];
        int i;
        HMENU hMenu = GetMenu(hMainWnd);
        MENUITEMINFOW mi;
        WCHAR buffer[6];

        mi.cbSize = sizeof(MENUITEMINFOW);
        mi.fMask = MIIM_DATA;

        for(i = 0; i < FILELIST_ENTRIES; i++)
            pFiles[i] = ((void*)0);

        for(i = 0; GetMenuItemInfoW(hMenu, ID_FILE_RECENT1+i, FALSE, &mi); i++)
            pFiles[i] = (LPWSTR)mi.dwItemData;

        if(lstrcmpiW(newFile, pFiles[0]))
        {
            for(i = 0; i < FILELIST_ENTRIES && pFiles[i]; i++)
            {
                if(!lstrcmpiW(pFiles[i], newFile))
                {
                    int j;
                    for(j = 0; j < i; j++)
                    {
                        pFiles[i-j] = pFiles[i-j-1];
                    }
                    pFiles[0] = ((void*)0);
                    break;
                }
            }

            if(!pFiles[0])
            {
                pFiles[0] = newFile;
            } else
            {
                for(i = 0; i < FILELIST_ENTRIES-1; i++)
                    pFiles[FILELIST_ENTRIES-1-i] = pFiles[FILELIST_ENTRIES-2-i];

                pFiles[0] = newFile;
            }

            for(i = 0; i < FILELIST_ENTRIES && pFiles[i]; i++)
            {
                wsprintfW(buffer, var_file, i+1);
                RegSetValueExW(hKey, (LPWSTR)&buffer, 0, REG_SZ, (const BYTE*)pFiles[i],
                               (lstrlenW(pFiles[i])+1)*sizeof(WCHAR));
            }
        }
        RegCloseKey(hKey);
    }
    registry_read_filelist(hMainWnd);
}
