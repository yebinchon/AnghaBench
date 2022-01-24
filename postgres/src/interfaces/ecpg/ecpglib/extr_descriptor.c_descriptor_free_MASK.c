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
struct descriptor_item {int /*<<< orphan*/  result; struct descriptor_item* name; struct descriptor_item* next; struct descriptor_item* data; struct descriptor_item* items; } ;
struct descriptor {int /*<<< orphan*/  result; struct descriptor* name; struct descriptor* next; struct descriptor* data; struct descriptor* items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct descriptor_item*) ; 

__attribute__((used)) static void
FUNC2(struct descriptor *desc)
{
	struct descriptor_item *desc_item;

	for (desc_item = desc->items; desc_item;)
	{
		struct descriptor_item *di;

		FUNC1(desc_item->data);
		di = desc_item;
		desc_item = desc_item->next;
		FUNC1(di);
	}

	FUNC1(desc->name);
	FUNC0(desc->result);
	FUNC1(desc);
}