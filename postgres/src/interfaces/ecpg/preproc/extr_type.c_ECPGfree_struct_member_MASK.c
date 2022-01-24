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
struct ECPGstruct_member {struct ECPGstruct_member* type; struct ECPGstruct_member* name; struct ECPGstruct_member* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ECPGstruct_member*) ; 

void
FUNC1(struct ECPGstruct_member *rm)
{
	while (rm)
	{
		struct ECPGstruct_member *p = rm;

		rm = rm->next;
		FUNC0(p->name);
		FUNC0(p->type);
		FUNC0(p);
	}
}