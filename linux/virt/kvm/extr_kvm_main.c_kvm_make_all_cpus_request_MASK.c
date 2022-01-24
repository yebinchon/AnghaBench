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
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC3(struct kvm *kvm, unsigned int req)
{
	cpumask_var_t cpus;
	bool called;

	FUNC2(&cpus, GFP_ATOMIC);

	called = FUNC1(kvm, req, NULL, cpus);

	FUNC0(cpus);
	return called;
}