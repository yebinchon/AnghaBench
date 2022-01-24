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
struct TYPE_3__ {int /*<<< orphan*/ * oserrstr; int /*<<< orphan*/ * lastmsg; int /*<<< orphan*/ * dberrstr; } ;
typedef  TYPE_1__ pdo_dblib_err ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(pdo_dblib_err *err)
{
	if (!err) {
		return;
	}

	if (err->dberrstr) {
		FUNC0(err->dberrstr);
		err->dberrstr = NULL;
	}
	if (err->lastmsg) {
		FUNC0(err->lastmsg);
		err->lastmsg = NULL;
	}
	if (err->oserrstr) {
		FUNC0(err->oserrstr);
		err->oserrstr = NULL;
	}
}