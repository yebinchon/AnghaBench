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
struct script_callback {struct script_callback* next; struct script_callback** p_prev_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  detach_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct script_callback*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct script_callback *cb)
{
	FUNC1(&detach_mutex);
	struct script_callback *next = cb->next;
	if (next)
		next->p_prev_next = cb->p_prev_next;
	*cb->p_prev_next = cb->next;
	FUNC2(&detach_mutex);

	FUNC0(cb);
}