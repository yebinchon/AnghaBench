#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* freefn ) (scalar_t__) ;} ;
struct TYPE_6__ {struct TYPE_6__* forward; scalar_t__ data; } ;
typedef  TYPE_1__ RSkipListNode ;
typedef  TYPE_2__ RSkipList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2 (RSkipList *list, RSkipListNode *node) {
	if (node) {
		if (list->freefn && node->data) {
			list->freefn (node->data);
		}
		FUNC0 (node->forward);
		FUNC0 (node);
	}
}