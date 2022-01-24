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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_3__ {TYPE_2__ v4; } ;
struct cidr {int prefix; TYPE_1__ addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ printed ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static bool FUNC2(struct cidr *a, struct cidr *b)
{
	uint32_t net1 = a->addr.v4.s_addr & FUNC0(~((1 << (32 - a->prefix)) - 1));
	uint32_t net2 = b->addr.v4.s_addr & FUNC0(~((1 << (32 - a->prefix)) - 1));

	if (printed)
		FUNC1(" ");

	if ((b->prefix >= a->prefix) && (net1 == net2))
	{
		FUNC1("1");
		return true;
	}
	else
	{
		FUNC1("0");
		return false;
	}
}