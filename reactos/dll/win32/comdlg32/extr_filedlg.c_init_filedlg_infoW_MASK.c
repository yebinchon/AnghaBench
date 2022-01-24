#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  icc ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  unicode; int /*<<< orphan*/ * initdir; void* filename; int /*<<< orphan*/  customfilter; int /*<<< orphan*/  filter; int /*<<< orphan*/  defext; int /*<<< orphan*/  title; TYPE_1__* ofnInfos; } ;
struct TYPE_9__ {int dwSize; int /*<<< orphan*/  dwICC; } ;
struct TYPE_8__ {int nMaxFile; scalar_t__ lpstrInitialDir; scalar_t__ lpstrFile; int /*<<< orphan*/  lpstrCustomFilter; int /*<<< orphan*/  lpstrFilter; int /*<<< orphan*/  lpstrDefExt; int /*<<< orphan*/  lpstrTitle; } ;
typedef  TYPE_1__ OPENFILENAMEW ;
typedef  TYPE_2__ INITCOMMONCONTROLSEX ;
typedef  TYPE_3__ FileOpenDlgInfos ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ICC_USEREX_CLASSES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(OPENFILENAMEW *ofn, FileOpenDlgInfos *info)
{
    INITCOMMONCONTROLSEX icc;

    /* Initialize ComboBoxEx32 */
    icc.dwSize = sizeof(icc);
    icc.dwICC = ICC_USEREX_CLASSES;
    FUNC2(&icc);

    /* Initialize CommDlgExtendedError() */
    FUNC0(0);

    FUNC5(info, 0, sizeof(*info));

    /* Pass in the original ofn */
    info->ofnInfos = ofn;

    info->title = ofn->lpstrTitle;
    info->defext = ofn->lpstrDefExt;
    info->filter = ofn->lpstrFilter;
    info->customfilter = ofn->lpstrCustomFilter;

    if (ofn->lpstrFile)
    {
        info->filename = FUNC3(ofn->nMaxFile * sizeof(WCHAR));
        FUNC4(info->filename, ofn->lpstrFile, ofn->nMaxFile);
    }

    if (ofn->lpstrInitialDir)
    {
        DWORD len = FUNC1(ofn->lpstrInitialDir, NULL, 0);
        if (len)
        {
            info->initdir = FUNC3(len * sizeof(WCHAR));
            FUNC1(ofn->lpstrInitialDir, info->initdir, len);
        }
    }

    info->unicode = TRUE;
}