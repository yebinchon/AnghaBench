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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ v4; } ;
struct cidr {scalar_t__ family; TYPE_2__ addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 struct cidr* FUNC0 (struct cidr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool FUNC4(struct cidr *a, struct cidr *b)
{
	uint32_t x = FUNC3(a->addr.v4.s_addr);
	uint32_t y = FUNC3(b->addr.v4.s_addr);

	struct cidr *n = FUNC0(a);

	if ((n->family != AF_INET) || (b->family != AF_INET))
		return false;

	if ((uint32_t)(x + y) < x)
	{
		FUNC1(stderr, "overflow during 'add'\n");
		return false;
	}

	n->addr.v4.s_addr = FUNC2(x + y);
	return true;
}