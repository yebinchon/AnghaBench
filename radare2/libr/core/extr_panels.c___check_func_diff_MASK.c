#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; } ;
struct TYPE_9__ {TYPE_1__* model; } ;
struct TYPE_8__ {void* funcName; } ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 scalar_t__ FUNC0 (void*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,char*) ; 
 scalar_t__ FUNC3 (void*,char*) ; 

bool FUNC4(RCore *core, RPanel *p) {
	RAnalFunction *func = FUNC1 (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
	if (!func) {
		if (FUNC0 (p->model->funcName)) {
			return false;
		}
		p->model->funcName = FUNC2 (p->model->funcName, "");
		return true;
	}
	if (!p->model->funcName || FUNC3 (p->model->funcName, func->name)) {
		p->model->funcName = FUNC2 (p->model->funcName, func->name);
		return true;
	}
	return false;
}