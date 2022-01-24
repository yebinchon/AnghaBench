#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; int /*<<< orphan*/  elements; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  TYPE_1__ const List ;

/* Variables and functions */
 TYPE_1__ const* NIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ const* FUNC2 (int /*<<< orphan*/ ,int) ; 

List *
FUNC3(const List *oldlist)
{
	List	   *newlist;

	if (oldlist == NIL)
		return NIL;

	newlist = FUNC2(oldlist->type, oldlist->length);
	FUNC1(newlist->elements, oldlist->elements,
		   newlist->length * sizeof(ListCell));

	FUNC0(newlist);
	return newlist;
}