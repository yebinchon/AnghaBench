#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* free; } ;
struct TYPE_5__ {TYPE_2__* child_list; TYPE_2__* module_list; struct TYPE_5__* pattern_bytes; struct TYPE_5__* variant_bool_array; } ;
typedef  void* RListFree ;
typedef  TYPE_1__ RFlirtNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ module_free ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(RFlirtNode *node) {
	if (!node) {
		return;
	}
	FUNC0 (node->variant_bool_array);
	FUNC0 (node->pattern_bytes);
	if (node->module_list) {
		node->module_list->free = (RListFree)module_free;
		FUNC1 (node->module_list);
	}
	if (node->child_list) {
		node->child_list->free = (RListFree) node_free;
		FUNC1 (node->child_list);
	}
	FUNC0 (node);
}