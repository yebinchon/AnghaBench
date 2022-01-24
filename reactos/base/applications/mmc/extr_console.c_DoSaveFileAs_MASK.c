#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  saveas ;
struct TYPE_11__ {int lStructSize; char* lpstrFilter; int nMaxFile; int Flags; char* lpstrDefExt; int /*<<< orphan*/ * lpstrFile; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hwndOwner; } ;
struct TYPE_10__ {int /*<<< orphan*/  hwnd; struct TYPE_10__* pFileName; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PCONSOLE_CHILDFRM_WND ;
typedef  TYPE_2__ OPENFILENAME ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int OFN_HIDEREADONLY ; 
 int OFN_OVERWRITEPROMPT ; 
 int OFN_PATHMUSTEXIST ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  hAppInstance ; 

__attribute__((used)) static BOOL
FUNC9(
    HWND hWnd,
    PCONSOLE_CHILDFRM_WND pChildInfo)
{
    OPENFILENAME saveas;
    TCHAR szPath[MAX_PATH];

    FUNC0("pChildInfo %p\n", pChildInfo);
    FUNC0("FileName %S\n", pChildInfo->pFileName);

    FUNC6(&saveas, sizeof(saveas));

    if (pChildInfo->pFileName != NULL)
    {
        FUNC8(szPath, pChildInfo->pFileName);
    }
    else
    {
        FUNC3(pChildInfo->hwnd, szPath, MAX_PATH);
        FUNC7(szPath, FUNC5(".msc"));
    }

    saveas.lStructSize = sizeof(OPENFILENAME);
    saveas.hwndOwner = hWnd;
    saveas.hInstance = hAppInstance;
    saveas.lpstrFilter = L"MSC Files\0*.msc\0";
    saveas.lpstrFile = szPath;
    saveas.nMaxFile = MAX_PATH;
    saveas.Flags = OFN_HIDEREADONLY | OFN_PATHMUSTEXIST | OFN_OVERWRITEPROMPT;
    saveas.lpstrDefExt = L"msc";

    if (FUNC2(&saveas))
    {
        /* HACK: Because in ROS, Save-As boxes don't check the validity
         * of file names and thus, here, szPath can be invalid !! We only
         * see its validity when we call DoSaveFile()... */
        FUNC4(pChildInfo, szPath);

        if (FUNC1(hWnd, pChildInfo))
        {
//            UpdateWindowCaption();
            return TRUE;
        }
        else
        {
            FUNC4(pChildInfo, NULL);
            return FALSE;
        }
    }
    else
    {
        return FALSE;
    }
}