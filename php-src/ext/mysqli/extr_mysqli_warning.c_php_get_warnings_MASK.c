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
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  int /*<<< orphan*/ * MYSQL_ROW ;
typedef  int /*<<< orphan*/  MYSQL_RES ;
typedef  TYPE_1__ MYSQLI_WARNING ;
typedef  int /*<<< orphan*/  MYSQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

MYSQLI_WARNING *FUNC6(MYSQL *mysql)
{
	MYSQLI_WARNING *w, *first = NULL, *prev = NULL;
	MYSQL_RES		*result;
	MYSQL_ROW 		row;

	if (FUNC3(mysql, "SHOW WARNINGS", 13)) {
		return NULL;
	}

	result = FUNC4(mysql);

	while ((row = FUNC1(result))) {
		w = FUNC5(row[2], FUNC0(row[1]));
		if (!first) {
			first = w;
		}
		if (prev) {
			prev->next = w;
		}
		prev = w;
	}
	FUNC2(result);
	return first;
}