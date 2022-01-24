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
struct TYPE_3__ {int persistent; int /*<<< orphan*/ * filtername; int /*<<< orphan*/ * cd; scalar_t__ stub_len; } ;
typedef  TYPE_1__ php_convert_filter ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(php_convert_filter *inst,
	int conv_mode, HashTable *conv_opts,
	const char *filtername, int persistent)
{
	inst->persistent = persistent;
	inst->filtername = FUNC1(filtername, persistent);
	inst->stub_len = 0;

	if ((inst->cd = FUNC3(conv_mode, conv_opts, persistent)) == NULL) {
		goto out_failure;
	}

	return SUCCESS;

out_failure:
	if (inst->cd != NULL) {
		FUNC2(inst->cd);
		FUNC0(inst->cd, persistent);
	}
	if (inst->filtername != NULL) {
		FUNC0(inst->filtername, persistent);
	}
	return FAILURE;
}