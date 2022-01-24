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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ bPruningOn; scalar_t__ bModesPruned; int /*<<< orphan*/  hwndDlg; int /*<<< orphan*/  bKeyIsReadOnly; } ;
typedef  TYPE_1__* PDESKMONITOR ;

/* Variables and functions */
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  BST_UNCHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PRUNINGCHECK ; 

__attribute__((used)) static VOID
FUNC3(PDESKMONITOR This)
{
    FUNC1(FUNC2(This->hwndDlg,
                            IDC_PRUNINGCHECK),
                 This->bModesPruned && !This->bKeyIsReadOnly);
    FUNC0(This->hwndDlg,
                   IDC_PRUNINGCHECK,
                   (This->bModesPruned && This->bPruningOn) ? BST_CHECKED : BST_UNCHECKED);
}