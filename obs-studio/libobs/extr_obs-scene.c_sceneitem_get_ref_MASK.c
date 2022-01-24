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
struct TYPE_4__ {long ref; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (long*,long,long) ; 

__attribute__((used)) static obs_sceneitem_t *FUNC1(obs_sceneitem_t *si)
{
	long owners = si->ref;
	while (owners > 0) {
		if (FUNC0(&si->ref, owners, owners + 1))
			return si;

		owners = si->ref;
	}
	return NULL;
}