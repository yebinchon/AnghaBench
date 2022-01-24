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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {unsigned int param_count; } ;
typedef  TYPE_1__ MYSQLND_STMT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(MYSQLND_STMT_DATA * stmt, zval *copies)
{
	if (copies) {
		unsigned int i;
		for (i = 0; i < stmt->param_count; i++) {
			FUNC1(&copies[i]);
		}
		FUNC0(copies);
	}
}