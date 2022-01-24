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
typedef  int /*<<< orphan*/  vstr_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 scalar_t__ HEAP_END ; 
 int /*<<< orphan*/  LED_BUILTIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  MP_QSTR_ ; 
 int /*<<< orphan*/  MP_QSTR_LED ; 
 int /*<<< orphan*/  MP_QSTR_Servo ; 
 int /*<<< orphan*/  MP_QSTR_analogRead ; 
 int /*<<< orphan*/  MP_QSTR_analogWrite ; 
 int /*<<< orphan*/  MP_QSTR_analogWriteFrequency ; 
 int /*<<< orphan*/  MP_QSTR_analogWriteResolution ; 
 int /*<<< orphan*/  MP_QSTR_delay ; 
 int /*<<< orphan*/  MP_QSTR_gc ; 
 int /*<<< orphan*/  MP_QSTR_gpio ; 
 int /*<<< orphan*/  MP_QSTR_help ; 
 int /*<<< orphan*/  MP_QSTR_info ; 
 int /*<<< orphan*/  MP_QSTR_led ; 
 int /*<<< orphan*/  MP_QSTR_main ; 
 int /*<<< orphan*/  MP_QSTR_pyb ; 
 int /*<<< orphan*/  MP_QSTR_source_dir ; 
 int /*<<< orphan*/  OUTPUT ; 
 int /*<<< orphan*/  PYB_LED_BUILTIN ; 
 scalar_t__ PYEXEC_MODE_RAW_REPL ; 
 int /*<<< orphan*/  SCB_CCR ; 
 int /*<<< orphan*/  SCB_CCR_STKALIGN ; 
 int /*<<< orphan*/  _heap_start ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_sys_argv ; 
 int /*<<< orphan*/  mp_sys_path ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  pyb_Servo ; 
 int /*<<< orphan*/  pyb_analog_read ; 
 int /*<<< orphan*/  pyb_analog_write ; 
 int /*<<< orphan*/  pyb_analog_write_frequency ; 
 int /*<<< orphan*/  pyb_analog_write_resolution ; 
 scalar_t__ pyb_config_main ; 
 int /*<<< orphan*/  pyb_delay ; 
 int /*<<< orphan*/  pyb_gc ; 
 int /*<<< orphan*/  pyb_gpio_obj ; 
 int /*<<< orphan*/  pyb_help ; 
 int /*<<< orphan*/  pyb_info ; 
 int /*<<< orphan*/  pyb_led ; 
 int /*<<< orphan*/  pyb_led_type ; 
 int /*<<< orphan*/  pyb_main ; 
 int /*<<< orphan*/  pyb_source_dir ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 scalar_t__ pyexec_mode_kind ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int) ; 
 char* FUNC26 (int /*<<< orphan*/ *) ; 

int FUNC27(void) {
    // TODO: Put this in a more common initialization function.
    // Turn on STKALIGN which keeps the stack 8-byte aligned for interrupts
    // (per EABI)
    #define SCB_CCR_STKALIGN (1 << 9)
    SCB_CCR |= SCB_CCR_STKALIGN;

    FUNC11();
    FUNC12(10240);

    FUNC15(LED_BUILTIN, OUTPUT);
    FUNC3();

//    int first_soft_reset = true;

soft_reset:

    FUNC4(PYB_LED_BUILTIN, 1);

    // GC init
    FUNC2(&_heap_start, (void*)HEAP_END);

    // MicroPython init
    FUNC5();
    FUNC8(mp_sys_path, 0);
    FUNC7(mp_sys_path, FUNC0(MP_QSTR_)); // current dir (or base dir of the script)
    FUNC8(mp_sys_argv, 0);

    FUNC22();

    FUNC16();

#if 0
    // add some functions to the python namespace
    {
        mp_store_name(MP_QSTR_help, mp_make_function_n(0, pyb_help));
        mp_obj_t m = mp_obj_new_module(MP_QSTR_pyb);
        mp_store_attr(m, MP_QSTR_info, mp_make_function_n(0, pyb_info));
        mp_store_attr(m, MP_QSTR_source_dir, mp_make_function_n(1, pyb_source_dir));
        mp_store_attr(m, MP_QSTR_main, mp_make_function_n(1, pyb_main));
        mp_store_attr(m, MP_QSTR_gc, mp_make_function_n(0, pyb_gc));
        mp_store_attr(m, MP_QSTR_delay, mp_make_function_n(1, pyb_delay));
        mp_store_attr(m, MP_QSTR_led, mp_make_function_n(1, pyb_led));
        mp_store_attr(m, MP_QSTR_LED, (mp_obj_t)&pyb_led_type);
        mp_store_attr(m, MP_QSTR_analogRead, mp_make_function_n(1, pyb_analog_read));
        mp_store_attr(m, MP_QSTR_analogWrite, mp_make_function_n(2, pyb_analog_write));
        mp_store_attr(m, MP_QSTR_analogWriteResolution, mp_make_function_n(1, pyb_analog_write_resolution));
        mp_store_attr(m, MP_QSTR_analogWriteFrequency, mp_make_function_n(2, pyb_analog_write_frequency));

        mp_store_attr(m, MP_QSTR_gpio, (mp_obj_t)&pyb_gpio_obj);
        mp_store_attr(m, MP_QSTR_Servo, mp_make_function_n(0, pyb_Servo));
        mp_store_name(MP_QSTR_pyb, m);
    }
#endif

#if MICROPY_MODULE_FROZEN
    pyexec_frozen_module("boot.py");
#else
    if (!FUNC18("/boot.py")) {
        FUNC1(4);
    }
#endif

    // Turn bootup LED off
    FUNC4(PYB_LED_BUILTIN, 0);

    // run main script
#if MICROPY_MODULE_FROZEN
    pyexec_frozen_module("main.py");
#else
    {
        vstr_t *vstr = FUNC25(16);
        FUNC23(vstr, "/");
        if (pyb_config_main == MP_OBJ_NULL) {
            FUNC23(vstr, "main.py");
        } else {
            FUNC23(vstr, FUNC10(pyb_config_main));
        }
        if (!FUNC18(FUNC26(vstr))) {
            FUNC1(3);
        }
        FUNC24(vstr);
    }
#endif

    // enter REPL
    // REPL mode can change, or it can request a soft reset
    for (;;) {
        if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
            if (FUNC21() != 0) {
                break;
            }
        } else {
            if (FUNC19() != 0) {
                break;
            }
        }
    }

    FUNC17("MPY: soft reboot\n");

//    first_soft_reset = false;
    goto soft_reset;
}