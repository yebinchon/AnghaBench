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
struct TYPE_3__ {int /*<<< orphan*/  on_modify; } ;
typedef  TYPE_1__ zend_ini_entry ;
typedef  scalar_t__ zend_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accel_blacklist ; 
 int /*<<< orphan*/  accel_globals_id ; 
 int /*<<< orphan*/  accel_post_shutdown ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  accel_startup_ok ; 
 int /*<<< orphan*/  accelerator_orig_compile_file ; 
 int /*<<< orphan*/  enabled ; 
 scalar_t__ file_cache_only ; 
 int /*<<< orphan*/  ini_directives ; 
 int /*<<< orphan*/  orig_include_path_on_modify ; 
 int /*<<< orphan*/  orig_post_shutdown_cb ; 
 int /*<<< orphan*/  preload_script ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zend_compile_file ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  zend_post_shutdown_cb ; 

void FUNC10(void)
{
	zend_ini_entry *ini_entry;
	zend_bool _file_cache_only = 0;

#ifdef HAVE_JIT
	zend_jit_shutdown();
#endif

	FUNC9();

	FUNC6(&accel_blacklist);

	if (!FUNC1(enabled) || !accel_startup_ok) {
#ifdef ZTS
		ts_free_id(accel_globals_id);
#endif
		return;
	}

	if (FUNC2(preload_script)) {
		FUNC4();
	}

	_file_cache_only = file_cache_only;

	FUNC3();

#ifdef ZTS
	ts_free_id(accel_globals_id);
#endif

	if (!_file_cache_only) {
		/* Delay SHM dettach */
		orig_post_shutdown_cb = zend_post_shutdown_cb;
		zend_post_shutdown_cb = accel_post_shutdown;
	}

	zend_compile_file = accelerator_orig_compile_file;

	if ((ini_entry = FUNC7(FUNC0(ini_directives), "include_path", sizeof("include_path")-1)) != NULL) {
		ini_entry->on_modify = orig_include_path_on_modify;
	}
}