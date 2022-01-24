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
struct TYPE_4__ {int dwSize; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  hwndParent; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ CRYPTUI_CERT_MGR_STRUCT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static BOOL FUNC3(HWND parent, DWORD flags)
{
    CRYPTUI_CERT_MGR_STRUCT dlg;

    FUNC1("(%p, 0x%x)\n", parent, flags);

    FUNC2(&dlg, sizeof(CRYPTUI_CERT_MGR_STRUCT));
    dlg.dwSize = sizeof(CRYPTUI_CERT_MGR_STRUCT);
    dlg.hwndParent = parent;
    dlg.dwFlags = flags;

    return FUNC0(&dlg);
}