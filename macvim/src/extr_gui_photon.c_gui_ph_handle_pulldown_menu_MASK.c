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
struct TYPE_2__ {int /*<<< orphan*/  submenu_id; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  int /*<<< orphan*/  PtWidget_t ;
typedef  int /*<<< orphan*/  PtCallbackInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int Pt_CONTINUE ; 

__attribute__((used)) static int
FUNC2(
	PtWidget_t *widget,
	void *data,
	PtCallbackInfo_t *info)
{
    if (data != NULL)
    {
	vimmenu_T *menu = (vimmenu_T *) data;

	FUNC0(menu->submenu_id, NULL);
	FUNC1(menu->submenu_id);
    }

    return Pt_CONTINUE;
}