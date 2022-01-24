#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* s6_addr; } ;
struct TYPE_4__ {TYPE_1__ v6; } ;
struct cidr {TYPE_2__ addr; } ;

/* Variables and functions */
 scalar_t__ printed ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static bool FUNC1(struct cidr *a)
{
	if (printed)
		FUNC0(" ");

	if ((a->addr.v6.s6_addr[0] >= 0xFC) &&
	    (a->addr.v6.s6_addr[0] <= 0xFD))
	{
		FUNC0("1");
		return true;
	}
	else
	{
		FUNC0("0");
		return false;
	}
}