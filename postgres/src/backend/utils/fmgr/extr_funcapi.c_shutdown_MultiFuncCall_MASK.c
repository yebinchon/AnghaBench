#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fn_extra; } ;
struct TYPE_3__ {int /*<<< orphan*/  multi_call_memory_ctx; } ;
typedef  TYPE_1__ FuncCallContext ;
typedef  TYPE_2__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(Datum arg)
{
	FmgrInfo   *flinfo = (FmgrInfo *) FUNC0(arg);
	FuncCallContext *funcctx = (FuncCallContext *) flinfo->fn_extra;

	/* unbind from flinfo */
	flinfo->fn_extra = NULL;

	/*
	 * Delete context that holds all multi-call data, including the
	 * FuncCallContext itself
	 */
	FUNC1(funcctx->multi_call_memory_ctx);
}