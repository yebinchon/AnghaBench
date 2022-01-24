#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* panels; } ;
struct TYPE_9__ {int /*<<< orphan*/ * model; } ;
struct TYPE_8__ {int n_panels; } ;
typedef  TYPE_1__ RPanels ;
typedef  int /*<<< orphan*/  RPanelModel ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 

void FUNC2(RCore *core, bool rev) {
	RPanels *panels = core->panels;
	RPanel *first = FUNC0 (panels, 0);
	RPanel *last = FUNC0 (panels, panels->n_panels - 1);
	int i;
	RPanelModel *tmp_model;
	if (!rev) {
		tmp_model = first->model;
		for (i = 0; i < panels->n_panels - 1; i++) {
			RPanel *p0 = FUNC0 (panels, i);
			RPanel *p1 = FUNC0 (panels, i + 1);
			p0->model = p1->model;
		}
		last->model = tmp_model;
	} else {
		tmp_model = last->model;
		for (i = panels->n_panels - 1; i > 0; i--) {
			RPanel *p0 = FUNC0 (panels, i);
			RPanel *p1 = FUNC0 (panels, i - 1);
			p0->model = p1->model;
		}
		first->model = tmp_model;
	}
	FUNC1 (core, false, true);
}