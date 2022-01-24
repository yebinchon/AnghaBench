#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct taskdialog_template_desc {TYPE_1__* taskconfig; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_8__ {unsigned int left; unsigned int right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
struct TYPE_9__ {int cbSize; TYPE_2__ rcWork; } ;
struct TYPE_7__ {int dwFlags; scalar_t__ hwndParent; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ MONITORINFO ;
typedef  int /*<<< orphan*/  HMONITOR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  MONITOR_DEFAULTTOPRIMARY ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int TDF_POSITION_RELATIVE_TO_WINDOW ; 
 int /*<<< orphan*/  FUNC4 (struct taskdialog_template_desc const*,unsigned int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC5(const struct taskdialog_template_desc *desc, RECT *ret)
{
    HMONITOR monitor = FUNC3(desc->taskconfig->hwndParent ? desc->taskconfig->hwndParent : FUNC0(),
            MONITOR_DEFAULTTOPRIMARY);
    MONITORINFO info;

    info.cbSize = sizeof(info);
    FUNC1(monitor, &info);

    if (desc->taskconfig->dwFlags & TDF_POSITION_RELATIVE_TO_WINDOW && desc->taskconfig->hwndParent)
        FUNC2(desc->taskconfig->hwndParent, ret);
    else
        *ret = info.rcWork;

    FUNC4(desc, &ret->left, &ret->top);
    FUNC4(desc, &ret->right, &ret->bottom);

    FUNC4(desc, &info.rcWork.left, &info.rcWork.top);
    FUNC4(desc, &info.rcWork.right, &info.rcWork.bottom);
    return info.rcWork.right - info.rcWork.left;
}