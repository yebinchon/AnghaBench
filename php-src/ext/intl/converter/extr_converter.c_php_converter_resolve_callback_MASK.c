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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_fcall_info_cache ;
struct TYPE_4__ {int /*<<< orphan*/  function_name; } ;
typedef  TYPE_1__ zend_fcall_info ;
typedef  int /*<<< orphan*/  php_converter_object ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  U_INTERNAL_PROGRAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static void FUNC10(zval *zobj,
                                           php_converter_object *objval,
                                           const char *callback_name,
                                           zend_fcall_info *finfo,
                                           zend_fcall_info_cache *fcache) {
	char *errstr = NULL;
	zval caller;

	FUNC5(&caller);
	FUNC1(zobj);
	FUNC4(&caller, 0, zobj);
	FUNC3(&caller, 1, callback_name);
	if (FUNC9(&caller, 0, finfo, fcache, NULL, &errstr) == FAILURE) {
		FUNC7(objval, U_INTERNAL_PROGRAM_ERROR, "Error setting converter callback: %s", errstr);
	}
	FUNC8(FUNC2(caller));
	FUNC0(&finfo->function_name);
	if (errstr) {
		FUNC6(errstr);
	}
}