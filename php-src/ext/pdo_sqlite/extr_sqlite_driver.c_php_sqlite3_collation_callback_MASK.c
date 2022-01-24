#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {int size; int param_count; int /*<<< orphan*/ * params; int /*<<< orphan*/ * retval; int /*<<< orphan*/ * object; int /*<<< orphan*/  function_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  fcc; TYPE_2__ fci; } ;
struct pdo_sqlite_collation {TYPE_1__ fc; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *context,
	int string1_len, const void *string1,
	int string2_len, const void *string2)
{
	int ret;
	zval zargs[2];
	zval retval;
	struct pdo_sqlite_collation *collation = (struct pdo_sqlite_collation*) context;

	collation->fc.fci.size = sizeof(collation->fc.fci);
	FUNC0(&collation->fc.fci.function_name, &collation->callback);
	collation->fc.fci.object = NULL;
	collation->fc.fci.retval = &retval;

	// Prepare the arguments.
	FUNC1(&zargs[0], (char *) string1, string1_len);
	FUNC1(&zargs[1], (char *) string2, string2_len);
	collation->fc.fci.param_count = 2;
	collation->fc.fci.params = zargs;

	if ((ret = FUNC7(&collation->fc.fci, &collation->fc.fcc)) == FAILURE) {
		FUNC6(NULL, E_WARNING, "An error occurred while invoking the callback");
	} else if (!FUNC2(retval)) {
		if (FUNC4(retval) != IS_LONG) {
			FUNC5(&retval);
		}
		ret = 0;
		if (FUNC3(retval) > 0) {
			ret = 1;
		} else if (FUNC3(retval) < 0) {
			ret = -1;
		}
		FUNC8(&retval);
	}

	FUNC8(&zargs[0]);
	FUNC8(&zargs[1]);

	return ret;
}