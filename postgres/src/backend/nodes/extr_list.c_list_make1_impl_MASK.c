#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * elements; } ;
typedef  int /*<<< orphan*/  NodeTag ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  TYPE_1__ List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 

List *
FUNC2(NodeTag t, ListCell datum1)
{
	List	   *list = FUNC1(t, 1);

	list->elements[0] = datum1;
	FUNC0(list);
	return list;
}