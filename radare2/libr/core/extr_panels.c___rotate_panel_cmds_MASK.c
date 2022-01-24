#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  replace ;
struct TYPE_14__ {int /*<<< orphan*/  panels; } ;
struct TYPE_13__ {TYPE_2__* view; TYPE_1__* model; } ;
struct TYPE_12__ {int refresh; } ;
struct TYPE_11__ {int rotate; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_3__ RPanel ;
typedef  TYPE_4__ RCore ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,char const*) ; 

void FUNC7(RCore *core, const char **cmds, const int cmdslen, const char *prefix, bool rev) {
	if (!cmdslen) {
		return;
	}
	RPanel *p = FUNC0 (core->panels);
	FUNC1 (core, p);
	if (rev) {
		if (!p->model->rotate) {
			p->model->rotate = cmdslen - 1;
		} else {
			p->model->rotate--;
		}
	} else {
		p->model->rotate++;
	}
	char tmp[64], *between;
	int i = p->model->rotate % cmdslen;
	FUNC6 (tmp, sizeof (tmp), "%s%s", prefix, cmds[i]);
	between = FUNC3 (p->model->cmd, prefix, " ");
	if (between) {
		char replace[64];
		FUNC6 (replace, sizeof (replace), "%s%s", prefix, between);
		p->model->cmd = FUNC5 (p->model->cmd, replace, tmp, 1);
	} else {
		p->model->cmd = FUNC4 (p->model->cmd, tmp);
	}
	FUNC2 (core, p, NULL);
	p->view->refresh = true;
}