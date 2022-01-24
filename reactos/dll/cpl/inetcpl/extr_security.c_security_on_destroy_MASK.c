#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hsec; scalar_t__ himages; int /*<<< orphan*/  hlv; struct TYPE_6__* zones; struct TYPE_6__* zone_attr; } ;
typedef  TYPE_1__ secdlg_data ;
typedef  int /*<<< orphan*/  INT_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  DWLP_USER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LVM_SETIMAGELIST ; 
 int /*<<< orphan*/  LVSIL_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static INT_PTR FUNC6(secdlg_data * sd)
{
    FUNC3("(%p)\n", sd);

    FUNC4(sd->zone_attr);
    FUNC4(sd->zones);
    if (sd->himages) {
        FUNC1(sd->hlv, LVM_SETIMAGELIST, LVSIL_NORMAL, 0);
        FUNC0(sd->himages);
    }

    FUNC5(sd);
    FUNC2(sd->hsec, DWLP_USER, 0);
    FUNC4(sd);
    return TRUE;
}