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
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct kvm_memory_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_memory_slot*) ; 

unsigned long FUNC3(struct kvm_memory_slot *slot,
				      gfn_t gfn, bool *writable)
{
	unsigned long hva = FUNC0(slot, gfn, NULL, false);

	if (!FUNC1(hva) && writable)
		*writable = !FUNC2(slot);

	return hva;
}