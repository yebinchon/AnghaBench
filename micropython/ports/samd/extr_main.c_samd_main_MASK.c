#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_PYTHON_PRINTER ; 
 int /*<<< orphan*/  MP_QSTR_ ; 
 scalar_t__ PYEXEC_MODE_RAW_REPL ; 
 int /*<<< orphan*/  _eheap ; 
 int /*<<< orphan*/  _estack ; 
 int /*<<< orphan*/  _sheap ; 
 int /*<<< orphan*/  _sstack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_sys_argv ; 
 int /*<<< orphan*/  mp_sys_path ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ pyexec_mode_kind ; 
 scalar_t__ FUNC12 () ; 

void FUNC13(void) {
    FUNC10(&_estack);
    FUNC9(&_estack - &_sstack - 1024);

    for (;;) {
        FUNC2(&_sheap, &_eheap);
        FUNC5();
        FUNC7(FUNC1(mp_sys_path), 0);
        FUNC6(mp_sys_path, FUNC0(MP_QSTR_));
        FUNC7(FUNC1(mp_sys_argv), 0);

        for (;;) {
            if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
                if (FUNC12() != 0) {
                    break;
                }
            } else {
                if (FUNC11() != 0) {
                    break;
                }
            }
        }

        FUNC8(MP_PYTHON_PRINTER, "MPY: soft reboot\n");
        FUNC3();
        FUNC4();
    }
}