#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cur_sort; int /*<<< orphan*/  xrefsCol; int /*<<< orphan*/  refsCol; int /*<<< orphan*/  mainCol; } ;
typedef  TYPE_1__ RCoreVisualViewGraph ;

/* Variables and functions */
 scalar_t__ SORT_ADDRESS ; 
 scalar_t__ SORT_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3 (RCoreVisualViewGraph *status) {
	FUNC2 (status);
	status->cur_sort = (status->cur_sort == SORT_ADDRESS)? SORT_NAME: SORT_ADDRESS;
	FUNC1 (status, status->mainCol);
	FUNC1 (status, status->refsCol);
	FUNC1 (status, status->xrefsCol);
	FUNC0 (status);
}