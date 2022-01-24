#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* cond; struct TYPE_4__* data; struct TYPE_4__* module_name; struct TYPE_4__* obytes; struct TYPE_4__* bbytes; struct TYPE_4__* name; } ;
typedef  TYPE_1__ RBreakpointItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1 (RBreakpointItem *b) {
	FUNC0 (b->name);
	FUNC0 (b->bbytes);
	FUNC0 (b->obytes);
	FUNC0 (b->module_name);
	FUNC0 (b->data);
	FUNC0 (b->cond);
	FUNC0 (b);
}