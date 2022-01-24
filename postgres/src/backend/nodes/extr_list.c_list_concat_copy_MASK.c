#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; int length; scalar_t__ elements; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  TYPE_1__ List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ const* NIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 TYPE_1__* FUNC4 (scalar_t__,int) ; 

List *
FUNC5(const List *list1, const List *list2)
{
	List	   *result;
	int			new_len;

	if (list1 == NIL)
		return FUNC2(list2);
	if (list2 == NIL)
		return FUNC2(list1);

	FUNC0(list1->type == list2->type);

	new_len = list1->length + list2->length;
	result = FUNC4(list1->type, new_len);
	FUNC3(result->elements, list1->elements,
		   list1->length * sizeof(ListCell));
	FUNC3(result->elements + list1->length, list2->elements,
		   list2->length * sizeof(ListCell));

	FUNC1(result);
	return result;
}