#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_2__ {int pages_shown; scalar_t__ page; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_STATUSBAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int MAX_STRING_LEN ; 
 int /*<<< orphan*/  STRING_PREVIEW_PAGE ; 
 int /*<<< orphan*/  STRING_PREVIEW_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_1__ preview ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC6(HWND hMainWnd)
{
    HWND hStatusbar = FUNC0(hMainWnd, IDC_STATUSBAR);
    HINSTANCE hInst = FUNC1(0);
    WCHAR *p;
    WCHAR wstr[MAX_STRING_LEN];

    p = wstr;
    if (preview.pages_shown < 2 || FUNC4(preview.page))
    {
        static const WCHAR fmt[] = {' ','%','d','\0'};
        p += FUNC2(hInst, STRING_PREVIEW_PAGE, wstr, MAX_STRING_LEN);
        FUNC5(p, fmt, preview.page);
    } else {
        static const WCHAR fmt[] = {' ','%','d','-','%','d','\0'};
        p += FUNC2(hInst, STRING_PREVIEW_PAGES, wstr, MAX_STRING_LEN);
        FUNC5(p, fmt, preview.page, preview.page + 1);
    }
    FUNC3(hStatusbar, wstr);
}