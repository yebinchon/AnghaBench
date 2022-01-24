#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_script ;
struct TYPE_5__ {int op_arrays_count; scalar_t__ func_infos; int /*<<< orphan*/ * op_arrays; } ;
typedef  TYPE_1__ zend_call_graph ;
typedef  int /*<<< orphan*/  zend_arena ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(zend_arena **arena, zend_script *script, zend_call_graph *call_graph) /* {{{ */
{
	int i;

	for (i = 0; i < call_graph->op_arrays_count; i++) {
		FUNC0(arena, script, 0, call_graph->op_arrays[i], call_graph->func_infos + i);
	}
	FUNC1(call_graph);
	FUNC2(call_graph);
}