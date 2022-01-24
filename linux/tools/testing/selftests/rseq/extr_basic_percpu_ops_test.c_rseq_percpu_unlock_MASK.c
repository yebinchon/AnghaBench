#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct percpu_lock {TYPE_1__* c; } ;
struct TYPE_2__ {int v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 

void FUNC2(struct percpu_lock *lock, int cpu)
{
	FUNC0(lock->c[cpu].v == 1);
	/*
	 * Release lock, with release semantic. Matches
	 * rseq_smp_acquire__after_ctrl_dep().
	 */
	FUNC1(&lock->c[cpu].v, 0);
}