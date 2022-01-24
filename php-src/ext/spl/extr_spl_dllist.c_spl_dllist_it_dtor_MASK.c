#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ it; } ;
struct TYPE_6__ {TYPE_2__ intern; int /*<<< orphan*/  traverse_pointer; } ;
typedef  TYPE_3__ spl_dllist_it ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_object_iterator *iter) /* {{{ */
{
	spl_dllist_it *iterator = (spl_dllist_it *)iter;

	FUNC0(iterator->traverse_pointer);

	FUNC1(iter);
	FUNC2(&iterator->intern.it.data);
}