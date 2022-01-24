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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int size; int param_count; int /*<<< orphan*/ * params; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * object; int /*<<< orphan*/  function_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  fcc; TYPE_3__ fci; } ;
struct TYPE_5__ {TYPE_1__ fci; int /*<<< orphan*/  cmp_func; } ;
typedef  TYPE_2__ php_sqlite3_collation ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *coll, int a_len, const void *a, int b_len, const void* b) /* {{{ */
{
	php_sqlite3_collation *collation = (php_sqlite3_collation*)coll;
	zval zargs[2];
	zval retval;
	int ret;

	// Exception occurred on previous callback. Don't attempt to call function.
	if (FUNC0(exception)) {
		return 0;
	}

	collation->fci.fci.size = (sizeof(collation->fci.fci));
	FUNC1(&collation->fci.fci.function_name, &collation->cmp_func);
	collation->fci.fci.object = NULL;
	collation->fci.fci.retval = &retval;
	collation->fci.fci.param_count = 2;

	FUNC2(&zargs[0], a, a_len);
	FUNC2(&zargs[1], b, b_len);

	collation->fci.fci.params = zargs;

	if ((ret = FUNC6(&collation->fci.fci, &collation->fci.fcc)) == FAILURE) {
		FUNC5(NULL, E_WARNING, "An error occurred while invoking the compare callback");
	}

	FUNC7(&zargs[0]);
	FUNC7(&zargs[1]);

	if (FUNC0(exception)) {
		ret = 0;
	} else if (FUNC4(retval) != IS_LONG){
		//retval ought to contain a ZVAL_LONG by now
		// (the result of a comparison, i.e. most likely -1, 0, or 1)
		//I suppose we could accept any scalar return type, though.
		FUNC5(NULL, E_WARNING, "An error occurred while invoking the compare callback (invalid return type).  Collation behaviour is undefined.");
	} else {
		ret = FUNC3(retval);
	}

	FUNC7(&retval);

	return ret;
}