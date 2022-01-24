#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_4__ {int dwFileAttributes; int* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__ LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 scalar_t__ CB_ERR ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,int) ; 
 int /*<<< orphan*/  IDC_SOUND_LIST ; 
 int /*<<< orphan*/  IDS_NO_SOUND ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int*) ; 
 int /*<<< orphan*/  hApplet ; 
 int /*<<< orphan*/  FUNC11 (int*,char*) ; 
 int* FUNC12 (int*,int) ; 

BOOL
FUNC13(HWND hwndDlg)
{
    TCHAR szList[256];
    WCHAR szPath[MAX_PATH];
    WCHAR * ptr;
    WIN32_FIND_DATAW FileData;
    HANDLE hFile;
    LRESULT lResult;
    UINT length;

    /* Add no sound listview item */
    if (FUNC6(hApplet, IDS_NO_SOUND, szList, FUNC9(szList)))
    {
        szList[FUNC9(szList) - 1] = FUNC8('\0');
        FUNC0(FUNC4(hwndDlg, IDC_SOUND_LIST), szList);
    }

    /* Load sound files */
    length = FUNC5(szPath, MAX_PATH);
    if (length == 0 || length >= MAX_PATH - 9)
    {
        return FALSE;
    }
    if (szPath[length-1] != L'\\')
    {
        szPath[length] = L'\\';
        length++;
    }
    FUNC11(&szPath[length], L"media\\*");
    length += 7;

    hFile = FUNC2(szPath, &FileData);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        return FALSE;
    }

    do
    {
        if (FileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            continue;

        ptr = FUNC12(FileData.cFileName, L'\\');
        if (ptr)
        {
            ptr++;
        }
        else
        {
            ptr = FileData.cFileName;
        }
        lResult = FUNC7(hwndDlg, IDC_SOUND_LIST, CB_ADDSTRING, (WPARAM)0, (LPARAM)ptr);
        if (lResult != CB_ERR)
        {
            FUNC11(&szPath[length-1], FileData.cFileName);
            FUNC7(hwndDlg, IDC_SOUND_LIST, CB_SETITEMDATA, (WPARAM)lResult, (LPARAM)FUNC10(szPath));
        }
    } while (FUNC3(hFile, &FileData) != 0);

    FUNC1(hFile);
    return TRUE;
}