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
struct TYPE_3__ {int /*<<< orphan*/  persistent; int /*<<< orphan*/ * filtername; int /*<<< orphan*/ * cd; } ;
typedef  TYPE_1__ php_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(php_convert_filter *inst)
{
	if (inst->cd != NULL) {
		FUNC1(inst->cd);
		FUNC0(inst->cd, inst->persistent);
	}

	if (inst->filtername != NULL) {
		FUNC0(inst->filtername, inst->persistent);
	}
}