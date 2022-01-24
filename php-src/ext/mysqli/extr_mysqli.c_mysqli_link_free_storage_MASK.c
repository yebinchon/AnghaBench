#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_8__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ mysqli_object ;
struct TYPE_10__ {int /*<<< orphan*/  status; scalar_t__ ptr; } ;
struct TYPE_9__ {scalar_t__ mysql; } ;
typedef  TYPE_2__ MY_MYSQL ;
typedef  TYPE_3__ MYSQLI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  MYSQLI_CLOSE_EXPLICIT ; 
 int /*<<< orphan*/  MYSQLI_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_object *object)
{
	mysqli_object 	*intern = FUNC4(object);
	MYSQLI_RESOURCE	*my_res = (MYSQLI_RESOURCE *)intern->ptr;

	if (my_res && my_res->ptr) {
		MY_MYSQL *mysql = (MY_MYSQL *)my_res->ptr;
		if (mysql->mysql) {
			FUNC3(mysql, MYSQLI_CLOSE_EXPLICIT, my_res->status);
		}
		FUNC2(mysql);
		FUNC0(mysql);
		my_res->status = MYSQLI_STATUS_UNKNOWN;
	}
	FUNC1(object);
}