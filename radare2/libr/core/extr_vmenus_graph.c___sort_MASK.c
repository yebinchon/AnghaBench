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
struct TYPE_7__ {scalar_t__ cur_sort; } ;
struct TYPE_6__ {int sorted; } ;
typedef  int /*<<< orphan*/  RListComparator ;
typedef  TYPE_1__ RList ;
typedef  TYPE_2__ RCoreVisualViewGraph ;

/* Variables and functions */
 scalar_t__ SORT_ADDRESS ; 
 int /*<<< orphan*/  cmpaddr ; 
 int /*<<< orphan*/  cmpname ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2 (RCoreVisualViewGraph *status, RList *list) {
	FUNC1 (status && list);
	RListComparator cmp = (status->cur_sort == SORT_ADDRESS)? cmpaddr: cmpname;
	list->sorted = false;
	FUNC0 (list, cmp);
}