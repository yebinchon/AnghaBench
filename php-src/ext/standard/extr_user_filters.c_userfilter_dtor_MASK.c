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
struct TYPE_3__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(php_stream_filter *thisfilter)
{
	zval *obj = &thisfilter->abstract;
	zval func_name;
	zval retval;

	if (obj == NULL) {
		/* If there's no object associated then there's nothing to dispose of */
		return;
	}

	FUNC0(&func_name, "onclose", sizeof("onclose")-1);

	FUNC1(NULL,
			obj,
			&func_name,
			&retval,
			0, NULL);

	FUNC2(&retval);
	FUNC2(&func_name);

	/* kill the object */
	FUNC2(obj);
}