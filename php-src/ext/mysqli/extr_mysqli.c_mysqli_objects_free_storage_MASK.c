#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_3__ {int /*<<< orphan*/  zo; scalar_t__ ptr; } ;
typedef  TYPE_1__ mysqli_object ;
typedef  int /*<<< orphan*/  MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_object	*object)
{
	mysqli_object 	*intern = FUNC1(object);
	MYSQLI_RESOURCE	*my_res = (MYSQLI_RESOURCE *)intern->ptr;

	if (my_res) {
		FUNC0(my_res);
	}
	FUNC2(&intern->zo);
}