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
struct TYPE_3__ {int /*<<< orphan*/  persistent; int /*<<< orphan*/ * lbchars; scalar_t__ lbchars_dup; } ;
typedef  TYPE_1__ php_conv_qprint_encode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(php_conv_qprint_encode *inst)
{
	FUNC0(inst != NULL);
	if (inst->lbchars_dup && inst->lbchars != NULL) {
		FUNC1((void *)inst->lbchars, inst->persistent);
	}
}