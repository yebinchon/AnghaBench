#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  RAnalReilArgType ;
typedef  TYPE_1__ RAnalReilArg ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void FUNC2(RAnalEsil *esil, RAnalReilArg *arg, char *name) {
	if (!arg) {
		return;
	}
	RAnalReilArgType type = FUNC1 (esil, name);
	arg->size = 0;
	arg->type = type;
	FUNC0  (arg->name, name, sizeof (arg->name) - 1);
}