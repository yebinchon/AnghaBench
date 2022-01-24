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
struct kvm_pmc {int /*<<< orphan*/ * perf_event; } ;

/* Variables and functions */
 struct kvm_pmc* FUNC0 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kvm_pmc *pmc)
{
	pmc = FUNC0(pmc);
	if (pmc->perf_event) {
		FUNC1(pmc->perf_event);
		FUNC2(pmc->perf_event);
		pmc->perf_event = NULL;
	}
}