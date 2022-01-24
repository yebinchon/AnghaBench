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
typedef  int /*<<< orphan*/  _TCHAR ;
struct TYPE_4__ {scalar_t__ pidlRoot; scalar_t__ pidlPath; scalar_t__ strPath; int /*<<< orphan*/  nCmdShow; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ EXPLORER_CMDLINE_PARSE_RESULTS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SH_EXPLORER_CMDLINE_FLAG_SEPARATE ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 

int FUNC4(int argc, _TCHAR* argv[])
{
    EXPLORER_CMDLINE_PARSE_RESULTS parseResults = { 0 };

    if (FUNC2(&parseResults))
    {
        parseResults.dwFlags |= SH_EXPLORER_CMDLINE_FLAG_SEPARATE;
        parseResults.nCmdShow = SW_SHOWNORMAL;
        return FUNC1(&parseResults);
    }

    if (parseResults.strPath)
        FUNC3(parseResults.strPath);

    if (parseResults.pidlPath)
        FUNC0(parseResults.pidlPath);

    if (parseResults.pidlRoot)
        FUNC0(parseResults.pidlRoot);

    return 0;
}