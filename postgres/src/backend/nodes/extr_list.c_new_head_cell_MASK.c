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
struct TYPE_4__ {int length; int max_length; int /*<<< orphan*/ * elements; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  TYPE_1__ List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(List *list)
{
	/* Enlarge array if necessary */
	if (list->length >= list->max_length)
		FUNC0(list, list->length + 1);
	/* Now shove the existing data over */
	FUNC1(&list->elements[1], &list->elements[0],
			list->length * sizeof(ListCell));
	list->length++;
}