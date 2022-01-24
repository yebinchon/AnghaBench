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
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;
typedef  TYPE_2__ RPanel ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

char *FUNC4(RCore *core, RPanel *p, char *input, char *str) {
	char *ret = NULL;
	char *res = FUNC0 (core, input);
	if (res) {
		p->model->cmd = FUNC3 (str, res);
		ret = FUNC2 (core, p->model->cmd);
		FUNC1 (res);
	}
	return ret;
}