#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int cbSize; scalar_t__ dwItemData; int /*<<< orphan*/  fMask; } ;
typedef  TYPE_1__ MENUITEMINFOW ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int FILELIST_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ ID_FILE_RECENT1 ; 
 int /*<<< orphan*/  MIIM_DATA ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  key_recentfiles ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC9(LPCWSTR newFile, HWND hMainWnd)
{
    HKEY hKey;
    DWORD action;

    if(FUNC6(&hKey, &action, key_recentfiles) == ERROR_SUCCESS)
    {
        LPCWSTR pFiles[FILELIST_ENTRIES];
        int i;
        HMENU hMenu = FUNC0(hMainWnd);
        MENUITEMINFOW mi;
        WCHAR buffer[6];

        mi.cbSize = sizeof(MENUITEMINFOW);
        mi.fMask = MIIM_DATA;

        for(i = 0; i < FILELIST_ENTRIES; i++)
            pFiles[i] = NULL;

        for(i = 0; FUNC1(hMenu, ID_FILE_RECENT1+i, FALSE, &mi); i++)
            pFiles[i] = (LPWSTR)mi.dwItemData;

        if(FUNC4(newFile, pFiles[0]))
        {
            for(i = 0; i < FILELIST_ENTRIES && pFiles[i]; i++)
            {
                if(!FUNC4(pFiles[i], newFile))
                {
                    int j;
                    for(j = 0; j < i; j++)
                    {
                        pFiles[i-j] = pFiles[i-j-1];
                    }
                    pFiles[0] = NULL;
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
                FUNC8(buffer, var_file, i+1);
                FUNC3(hKey, (LPWSTR)&buffer, 0, REG_SZ, (const BYTE*)pFiles[i],
                               (FUNC5(pFiles[i])+1)*sizeof(WCHAR));
            }
        }
        FUNC2(hKey);
    }
    FUNC7(hMainWnd);
}