#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct proc_handler {int /*<<< orphan*/  procs; } ;
typedef  struct proc_handler proc_handler_t ;

/* Variables and functions */
 struct proc_handler* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

proc_handler_t *FUNC2(void)
{
	struct proc_handler *handler = FUNC0(sizeof(struct proc_handler));
	FUNC1(handler->procs);
	return handler;
}