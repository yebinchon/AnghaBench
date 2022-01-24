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
struct obs_weak_ref {long refs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (long*,long,long) ; 

__attribute__((used)) static inline bool FUNC1(struct obs_weak_ref *ref)
{
	long owners = ref->refs;
	while (owners > -1) {
		if (FUNC0(&ref->refs, owners, owners + 1))
			return true;

		owners = ref->refs;
	}

	return false;
}