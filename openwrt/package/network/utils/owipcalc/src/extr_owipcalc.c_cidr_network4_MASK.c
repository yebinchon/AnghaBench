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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ v4; } ;
struct cidr {int prefix; TYPE_2__ addr; } ;

/* Variables and functions */
 struct cidr* FUNC0 (struct cidr*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(struct cidr *a)
{
	struct cidr *n = FUNC0(a);

	n->addr.v4.s_addr &= FUNC1(~((1 << (32 - n->prefix)) - 1));
	n->prefix = 32;

	return true;
}