
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vprintf_like_t ;
typedef scalar_t__ uint32_t ;





 int MALLOC_CAP_8BIT ;
 int MP_OBJ_NEW_QSTR (int ) ;
 int MP_QSTR_ ;
 int MP_QSTR__slash_lib ;
 int MP_TASK_STACK_LEN ;
 scalar_t__ MP_TASK_STACK_SIZE ;
 scalar_t__ PYEXEC_MODE_FRIENDLY_REPL ;
 scalar_t__ PYEXEC_MODE_RAW_REPL ;
 int esp_log_set_vprintf (int ) ;
 int esp_spiram_get_chip_size () ;
 int fflush (int ) ;
 int gc_init (void*,void*) ;
 int gc_sweep_all () ;
 int get_sp () ;
 size_t heap_caps_get_largest_free_block (int ) ;
 int machine_pins_deinit () ;
 int machine_pins_init () ;
 int machine_timer_deinit_all () ;
 void* malloc (size_t) ;
 int mp_deinit () ;
 int mp_hal_stdout_tx_str (char*) ;
 int mp_init () ;
 int mp_obj_list_append (int ,int ) ;
 int mp_obj_list_init (int ,int ) ;
 int mp_stack_set_limit (scalar_t__) ;
 int mp_stack_set_top (void*) ;
 int mp_sys_argv ;
 int mp_sys_path ;
 int mp_thread_deinit () ;
 int mp_thread_init (int ,int ) ;
 int pxTaskGetStackStart (int *) ;
 int pyexec_file_if_exists (char*) ;
 scalar_t__ pyexec_friendly_repl () ;
 int pyexec_frozen_module (char*) ;
 scalar_t__ pyexec_mode_kind ;
 scalar_t__ pyexec_raw_repl () ;
 int readline_init0 () ;
 int stdout ;
 int uart_init () ;
 int usocket_events_deinit () ;
 int vprintf_null ;

void mp_task(void *pvParameter) {
    volatile uint32_t sp = (uint32_t)get_sp();



    uart_init();
    size_t mp_task_heap_size = heap_caps_get_largest_free_block(MALLOC_CAP_8BIT);
    void *mp_task_heap = malloc(mp_task_heap_size);


soft_reset:

    mp_stack_set_top((void *)sp);
    mp_stack_set_limit(MP_TASK_STACK_SIZE - 1024);
    gc_init(mp_task_heap, mp_task_heap + mp_task_heap_size);
    mp_init();
    mp_obj_list_init(mp_sys_path, 0);
    mp_obj_list_append(mp_sys_path, MP_OBJ_NEW_QSTR(MP_QSTR_));
    mp_obj_list_append(mp_sys_path, MP_OBJ_NEW_QSTR(MP_QSTR__slash_lib));
    mp_obj_list_init(mp_sys_argv, 0);
    readline_init0();


    machine_pins_init();


    pyexec_frozen_module("_boot.py");
    pyexec_file_if_exists("boot.py");
    if (pyexec_mode_kind == PYEXEC_MODE_FRIENDLY_REPL) {
        pyexec_file_if_exists("main.py");
    }

    for (;;) {
        if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
            vprintf_like_t vprintf_log = esp_log_set_vprintf(vprintf_null);
            if (pyexec_raw_repl() != 0) {
                break;
            }
            esp_log_set_vprintf(vprintf_log);
        } else {
            if (pyexec_friendly_repl() != 0) {
                break;
            }
        }
    }

    machine_timer_deinit_all();





    gc_sweep_all();

    mp_hal_stdout_tx_str("MPY: soft reboot\r\n");


    machine_pins_deinit();
    usocket_events_deinit();

    mp_deinit();
    fflush(stdout);
    goto soft_reset;
}
