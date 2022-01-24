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
struct TYPE_2__ {int /*<<< orphan*/  vimContainer; } ;
typedef  int /*<<< orphan*/  PtWidget_t ;
typedef  int /*<<< orphan*/  PtCallbackInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int Pt_CONTINUE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  is_ignore_draw ; 

__attribute__((used)) static int
FUNC3(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    if (FUNC2(widget))
    {
	is_ignore_draw = TRUE;
	FUNC1(gui.vimContainer);
	FUNC0(gui.vimContainer);
    }

    return Pt_CONTINUE;
}