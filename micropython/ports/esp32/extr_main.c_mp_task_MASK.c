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
typedef  int /*<<< orphan*/  vprintf_like_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
#define  ESP_SPIRAM_SIZE_16MBITS 130 
#define  ESP_SPIRAM_SIZE_32MBITS 129 
#define  ESP_SPIRAM_SIZE_64MBITS 128 
 int /*<<< orphan*/  MALLOC_CAP_8BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_QSTR_ ; 
 int /*<<< orphan*/  MP_QSTR__slash_lib ; 
 int /*<<< orphan*/  MP_TASK_STACK_LEN ; 
 scalar_t__ MP_TASK_STACK_SIZE ; 
 scalar_t__ PYEXEC_MODE_FRIENDLY_REPL ; 
 scalar_t__ PYEXEC_MODE_RAW_REPL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  mp_sys_argv ; 
 int /*<<< orphan*/  mp_sys_path ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 scalar_t__ FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 scalar_t__ pyexec_mode_kind ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  vprintf_null ; 

void FUNC29(void *pvParameter) {
    volatile uint32_t sp = (uint32_t)FUNC6();
    #if MICROPY_PY_THREAD
    mp_thread_init(pxTaskGetStackStart(NULL), MP_TASK_STACK_LEN);
    #endif
    FUNC27();

    // TODO: CONFIG_SPIRAM_SUPPORT is for 3.3 compatibility, remove after move to 4.0.
    #if CONFIG_ESP32_SPIRAM_SUPPORT || CONFIG_SPIRAM_SUPPORT
    // Try to use the entire external SPIRAM directly for the heap
    size_t mp_task_heap_size;
    void *mp_task_heap = (void*)0x3f800000;
    switch (esp_spiram_get_chip_size()) {
        case ESP_SPIRAM_SIZE_16MBITS:
            mp_task_heap_size = 2 * 1024 * 1024;
            break;
        case ESP_SPIRAM_SIZE_32MBITS:
        case ESP_SPIRAM_SIZE_64MBITS:
            mp_task_heap_size = 4 * 1024 * 1024;
            break;
        default:
            // No SPIRAM, fallback to normal allocation
            mp_task_heap_size = heap_caps_get_largest_free_block(MALLOC_CAP_8BIT);
            mp_task_heap = malloc(mp_task_heap_size);
            break;
    }
    #else
    // Allocate the uPy heap using malloc and get the largest available region
    size_t mp_task_heap_size = FUNC7(MALLOC_CAP_8BIT);
    void *mp_task_heap = FUNC11(mp_task_heap_size);
    #endif

soft_reset:
    // initialise the stack pointer for the main thread
    FUNC18((void *)sp);
    FUNC17(MP_TASK_STACK_SIZE - 1024);
    FUNC4(mp_task_heap, mp_task_heap + mp_task_heap_size);
    FUNC14();
    FUNC16(mp_sys_path, 0);
    FUNC15(mp_sys_path, FUNC0(MP_QSTR_));
    FUNC15(mp_sys_path, FUNC0(MP_QSTR__slash_lib));
    FUNC16(mp_sys_argv, 0);
    FUNC26();

    // initialise peripherals
    FUNC9();

    // run boot-up scripts
    FUNC24("_boot.py");
    FUNC22("boot.py");
    if (pyexec_mode_kind == PYEXEC_MODE_FRIENDLY_REPL) {
        FUNC22("main.py");
    }

    for (;;) {
        if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
            vprintf_like_t vprintf_log = FUNC1(vprintf_null);
            if (FUNC25() != 0) {
                break;
            }
            FUNC1(vprintf_log);
        } else {
            if (FUNC23() != 0) {
                break;
            }
        }
    }

    FUNC10();

    #if MICROPY_PY_THREAD
    mp_thread_deinit();
    #endif

    FUNC5();

    FUNC13("MPY: soft reboot\r\n");

    // deinitialise peripherals
    FUNC8();
    FUNC28();

    FUNC12();
    FUNC3(stdout);
    goto soft_reset;
}