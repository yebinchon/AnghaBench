#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {TYPE_2__* time; } ;
typedef  TYPE_1__ php_date_obj ;
struct TYPE_7__ {int /*<<< orphan*/  tz_info; int /*<<< orphan*/  sse_uptodate; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(zval *d1, zval *d2) /* {{{ */
{
	php_date_obj *o1;
	php_date_obj *o2;

	FUNC0(d1, d2);

	o1 = FUNC1(d1);
	o2 = FUNC1(d2);

	if (!o1->time || !o2->time) {
		FUNC2(NULL, E_WARNING, "Trying to compare an incomplete DateTime or DateTimeImmutable object");
		return 1;
	}
	if (!o1->time->sse_uptodate) {
		FUNC4(o1->time, o1->time->tz_info);
	}
	if (!o2->time->sse_uptodate) {
		FUNC4(o2->time, o2->time->tz_info);
	}

	return FUNC3(o1->time, o2->time);
}