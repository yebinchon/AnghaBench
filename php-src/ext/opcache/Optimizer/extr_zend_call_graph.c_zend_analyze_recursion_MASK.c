#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_5__ {int flags; TYPE_2__* caller_info; } ;
typedef  TYPE_1__ zend_func_info ;
struct TYPE_6__ {int recursive; struct TYPE_6__* next_caller; int /*<<< orphan*/ * caller_op_array; } ;
typedef  TYPE_2__ zend_call_info ;
struct TYPE_7__ {int op_arrays_count; TYPE_1__* func_infos; int /*<<< orphan*/ ** op_arrays; } ;
typedef  TYPE_3__ zend_call_graph ;
typedef  int /*<<< orphan*/  zend_bitset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int ZEND_FUNC_RECURSIVE ; 
 int ZEND_FUNC_RECURSIVE_DIRECTLY ; 
 int ZEND_FUNC_RECURSIVE_INDIRECTLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  use_heap ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(zend_call_graph *call_graph)
{
	zend_op_array *op_array;
	zend_func_info *func_info;
	zend_call_info *call_info;
	int i;
	int set_len = FUNC4(call_graph->op_arrays_count);
	zend_bitset visited;
	FUNC0(use_heap);

	visited = FUNC1(set_len, use_heap);
	for (i = 0; i < call_graph->op_arrays_count; i++) {
		op_array = call_graph->op_arrays[i];
		func_info = call_graph->func_infos + i;
		call_info = func_info->caller_info;
		while (call_info) {
			if (call_info->caller_op_array == op_array) {
				call_info->recursive = 1;
				func_info->flags |= ZEND_FUNC_RECURSIVE | ZEND_FUNC_RECURSIVE_DIRECTLY;
			} else {
				FUNC3(visited, 0, sizeof(zend_ulong) * set_len);
				if (FUNC5(op_array, call_info->caller_op_array, visited)) {
					call_info->recursive = 1;
					func_info->flags |= ZEND_FUNC_RECURSIVE | ZEND_FUNC_RECURSIVE_INDIRECTLY;
				}
			}
			call_info = call_info->next_caller;
		}
	}

	FUNC2(visited, use_heap);
}