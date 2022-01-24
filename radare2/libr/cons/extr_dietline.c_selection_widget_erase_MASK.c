#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sel_widget; } ;
struct TYPE_7__ {int /*<<< orphan*/  user; int /*<<< orphan*/  (* cb_task_oneshot ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ event_data; int /*<<< orphan*/  (* event_resize ) (scalar_t__) ;} ;
struct TYPE_6__ {int selection; scalar_t__ options_len; } ;
typedef  TYPE_1__ RSelWidget ;
typedef  TYPE_2__ RCons ;

/* Variables and functions */
 TYPE_5__ I ; 
 char* R_CONS_CLEAR_FROM_CURSOR_TO_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  print_rline_task ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6() {
	RSelWidget *sel_widget = I.sel_widget;
	if (sel_widget) {
		sel_widget->options_len = 0;
		sel_widget->selection = -1;
		FUNC3 ();
		FUNC0 (I.sel_widget);
		RCons *cons = FUNC2 ();
		if (cons->event_resize && cons->event_data) {
			cons->event_resize (cons->event_data);
			cons->cb_task_oneshot (cons->user, print_rline_task, NULL);
		}
		FUNC1 ("%s", R_CONS_CLEAR_FROM_CURSOR_TO_END);
	}
}