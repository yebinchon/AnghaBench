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
typedef  int zend_bool ;
struct TYPE_3__ {int /*<<< orphan*/  sname_len; } ;
typedef  TYPE_1__ php_session_rfc1867_progress ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_globals ; 
 int /*<<< orphan*/  session_name ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC8(zval *dest, int where, php_session_rfc1867_progress *progress) /* {{{ */
{
	zval *ppid;

	if (FUNC4(FUNC0(http_globals)[where])) {
		return 0;
	}

	if ((ppid = FUNC6(FUNC3(FUNC0(http_globals)[where]), FUNC1(session_name), progress->sname_len))
			&& FUNC5(ppid) == IS_STRING) {
		FUNC7(dest);
		FUNC2(dest, ppid);
		return 1;
	}

	return 0;
}