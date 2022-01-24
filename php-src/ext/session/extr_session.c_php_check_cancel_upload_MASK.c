#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_bool ;
struct TYPE_4__ {int /*<<< orphan*/  s; } ;
struct TYPE_5__ {TYPE_1__ key; } ;
typedef  TYPE_2__ php_session_rfc1867_progress ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_session_vars ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_bool FUNC6(php_session_rfc1867_progress *progress) /* {{{ */
{
	zval *progress_ary, *cancel_upload;

	if ((progress_ary = FUNC5(FUNC1(FUNC2(FUNC0(http_session_vars))), progress->key.s)) == NULL) {
		return 0;
	}
	if (FUNC3(progress_ary) != IS_ARRAY) {
		return 0;
	}
	if ((cancel_upload = FUNC4(FUNC1(progress_ary), "cancel_upload", sizeof("cancel_upload") - 1)) == NULL) {
		return 0;
	}
	return FUNC3(cancel_upload) == IS_TRUE;
}