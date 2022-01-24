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
struct TYPE_3__ {int /*<<< orphan*/  li_read; int /*<<< orphan*/ * hash_key; } ;
typedef  TYPE_1__ MY_MYSQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(MY_MYSQL *mysql) {
	if (mysql->hash_key) {
		FUNC2(mysql->hash_key, 0);
		mysql->hash_key = NULL;
	}
	if (!FUNC1(mysql->li_read)) {
		FUNC3(&(mysql->li_read));
		FUNC0(&mysql->li_read);
	}
}