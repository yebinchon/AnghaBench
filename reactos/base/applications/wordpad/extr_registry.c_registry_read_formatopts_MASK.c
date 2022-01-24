#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BANDID_FORMATBAR ; 
 int BANDID_RULER ; 
 int BANDID_STATUSBAR ; 
 int BANDID_TOOLBAR ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ ID_WORDWRAP_NONE ; 
 scalar_t__ ID_WORDWRAP_WINDOW ; 
 scalar_t__ REG_OPENED_EXISTING_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  SF_RTF ; 
 int /*<<< orphan*/  SF_TEXT ; 
 scalar_t__ TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_barstate0 ; 
 int /*<<< orphan*/  var_wrap ; 

__attribute__((used)) static void FUNC4(int index, LPCWSTR key, DWORD barState[], DWORD wordWrap[])
{
    HKEY hKey;
    DWORD action = 0;
    BOOL fetched = FALSE;
    barState[index] = 0;
    wordWrap[index] = 0;

    if(FUNC3(&hKey, &action, key) != ERROR_SUCCESS)
        return;

    if(action == REG_OPENED_EXISTING_KEY)
    {
        DWORD size = sizeof(DWORD);

        if(FUNC1(hKey, var_barstate0, 0, NULL, (LPBYTE)&barState[index],
           &size) == ERROR_SUCCESS)
            fetched = TRUE;
    }

    if(!fetched)
        barState[index] = (1 << BANDID_TOOLBAR) | (1 << BANDID_FORMATBAR) | (1 << BANDID_RULER) | (1 << BANDID_STATUSBAR);

    fetched = FALSE;
    if(action == REG_OPENED_EXISTING_KEY)
    {
        DWORD size = sizeof(DWORD);
        if(FUNC1(hKey, var_wrap, 0, NULL, (LPBYTE)&wordWrap[index],
           &size) == ERROR_SUCCESS)
            fetched = TRUE;
    }

    if (!fetched)
    {
        if(index == FUNC2(SF_RTF))
            wordWrap[index] = ID_WORDWRAP_WINDOW;
        else if(index == FUNC2(SF_TEXT))
            wordWrap[index] = ID_WORDWRAP_NONE;
    }

    FUNC0(hKey);
}