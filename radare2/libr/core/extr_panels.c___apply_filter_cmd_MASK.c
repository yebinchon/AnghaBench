#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {char* cmd; char** filter; int n_filter; } ;
typedef  TYPE_2__ RPanel ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

char *FUNC4(RCore *core, RPanel *panel) {
	char *out = FUNC1 (panel->model->cmd, FUNC3 (panel->model->cmd) + 1024);
	if (!panel->model->filter) {
		return out;
	}
	int i;
	for (i = 0; i < panel->model->n_filter; i++) {
		char *filter = panel->model->filter[i];
		if (FUNC3 (filter) > 1024) {
			(void)FUNC0 (core, "filter is too big.");
			return out;
		}
		FUNC2 (out, "~");
		FUNC2 (out, filter);
	}
	return out;
}