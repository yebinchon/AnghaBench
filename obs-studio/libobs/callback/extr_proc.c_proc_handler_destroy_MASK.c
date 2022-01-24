#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t num; scalar_t__ array; } ;
struct TYPE_5__ {TYPE_3__ procs; } ;
typedef  TYPE_1__ proc_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(proc_handler_t *handler)
{
	if (handler) {
		for (size_t i = 0; i < handler->procs.num; i++)
			FUNC2(handler->procs.array + i);
		FUNC1(handler->procs);
		FUNC0(handler);
	}
}