#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ mysqli_object ;
struct TYPE_5__ {int /*<<< orphan*/ * ptr; scalar_t__ info; } ;
typedef  int /*<<< orphan*/  MYSQLI_WARNING ;
typedef  TYPE_2__ MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_object *object)
{
	mysqli_object 	*intern = FUNC2(object);
	MYSQLI_RESOURCE	*my_res = (MYSQLI_RESOURCE *)intern->ptr;

	if (my_res && my_res->ptr) {
		FUNC1((MYSQLI_WARNING *)my_res->info);
		my_res->ptr = NULL;
	}
	FUNC0(object);
}