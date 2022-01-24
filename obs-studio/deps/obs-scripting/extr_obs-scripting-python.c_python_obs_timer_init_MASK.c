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
struct python_obs_timer {struct python_obs_timer* next; struct python_obs_timer** p_prev_next; } ;

/* Variables and functions */
 struct python_obs_timer* first_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_mutex ; 

__attribute__((used)) static inline void FUNC2(struct python_obs_timer *timer)
{
	FUNC0(&timer_mutex);

	struct python_obs_timer *next = first_timer;
	timer->next = next;
	timer->p_prev_next = &first_timer;
	if (next)
		next->p_prev_next = &timer->next;
	first_timer = timer;

	FUNC1(&timer_mutex);
}