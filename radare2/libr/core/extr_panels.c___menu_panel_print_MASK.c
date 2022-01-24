#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* model; TYPE_3__* view; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {TYPE_2__ pos; } ;
struct TYPE_6__ {char* title; } ;
typedef  TYPE_4__ RPanel ;
typedef  int /*<<< orphan*/  RConsCanvas ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*,int,int,int,int) ; 

void FUNC4(RConsCanvas *can, RPanel *panel, int x, int y, int w, int h) {
	(void) FUNC1 (can, panel->view->pos.x + 2, panel->view->pos.y + 2);
	char *text = FUNC3 (panel->model->title, x, y, w, h);
	if (text) {
		FUNC2 (can, text);
		FUNC0 (text);
	} else {
		FUNC2 (can, panel->model->title);
	}
}