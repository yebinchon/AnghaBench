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
typedef  void WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  unicode; TYPE_1__* ofnInfos; } ;
struct TYPE_9__ {int nMaxFile; scalar_t__* lpstrCustomFilter; scalar_t__* lpstrFilter; scalar_t__* lpstrFile; int /*<<< orphan*/  lpstrTitle; int /*<<< orphan*/  lpstrDefExt; int /*<<< orphan*/  lpstrInitialDir; } ;
struct TYPE_8__ {void* lpstrFile; int nMaxFile; void* lpstrCustomFilter; void* lpstrInitialDir; void* lpstrFilter; void* lpstrTitle; void* lpstrDefExt; } ;
typedef  TYPE_1__ OPENFILENAMEW ;
typedef  TYPE_2__ OPENFILENAMEA ;
typedef  scalar_t__* LPCSTR ;
typedef  TYPE_3__ FileOpenDlgInfos ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,void*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 int FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void FUNC6(OPENFILENAMEA *ofn, FileOpenDlgInfos *info)
{
    OPENFILENAMEW ofnW;
    int len;

    ofnW = *(OPENFILENAMEW *)ofn;

    ofnW.lpstrInitialDir = FUNC3(ofn->lpstrInitialDir);
    ofnW.lpstrDefExt = FUNC3(ofn->lpstrDefExt);
    ofnW.lpstrTitle = FUNC3(ofn->lpstrTitle);

    if (ofn->lpstrFile)
    {
        len = FUNC0(CP_ACP, 0, ofn->lpstrFile, ofn->nMaxFile, NULL, 0);
        ofnW.lpstrFile = FUNC1(len * sizeof(WCHAR));
        FUNC0(CP_ACP, 0, ofn->lpstrFile, ofn->nMaxFile, ofnW.lpstrFile, len);
        ofnW.nMaxFile = len;
    }

    if (ofn->lpstrFilter)
    {
        LPCSTR s;
        int n;

        /* filter is a list...  title\0ext\0......\0\0 */
        s = ofn->lpstrFilter;
        while (*s) s = s+FUNC5(s)+1;
        s++;
        n = s - ofn->lpstrFilter;
        len = FUNC0(CP_ACP, 0, ofn->lpstrFilter, n, NULL, 0);
        ofnW.lpstrFilter = FUNC1(len * sizeof(WCHAR));
        FUNC0(CP_ACP, 0, ofn->lpstrFilter, n, (WCHAR *)ofnW.lpstrFilter, len);
    }

    /* convert lpstrCustomFilter */
    if (ofn->lpstrCustomFilter)
    {
        int n, len;
        LPCSTR s;

        /* customfilter contains a pair of strings...  title\0ext\0 */
        s = ofn->lpstrCustomFilter;
        if (*s) s = s+FUNC5(s)+1;
        if (*s) s = s+FUNC5(s)+1;
        n = s - ofn->lpstrCustomFilter;
        len = FUNC0(CP_ACP, 0, ofn->lpstrCustomFilter, n, NULL, 0);
        ofnW.lpstrCustomFilter = FUNC1(len * sizeof(WCHAR));
        FUNC0(CP_ACP, 0, ofn->lpstrCustomFilter, n, ofnW.lpstrCustomFilter, len);
    }

    FUNC4(&ofnW, info);

    /* fixup A-specific fields */
    info->ofnInfos = (OPENFILENAMEW *)ofn;
    info->unicode = FALSE;

    /* free what was duplicated */
    FUNC2((void *)ofnW.lpstrInitialDir);
    FUNC2(ofnW.lpstrFile);
}