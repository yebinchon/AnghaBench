
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_OBJ_NEW_QSTR (int ) ;
 int MP_OBJ_TO_PTR (int ) ;
 int MP_PYTHON_PRINTER ;
 int MP_QSTR_ ;
 scalar_t__ PYEXEC_MODE_RAW_REPL ;
 int _eheap ;
 int _estack ;
 int _sheap ;
 int _sstack ;
 int gc_init (int *,int *) ;
 int gc_sweep_all () ;
 int mp_deinit () ;
 int mp_init () ;
 int mp_obj_list_append (int ,int ) ;
 int mp_obj_list_init (int ,int ) ;
 int mp_printf (int ,char*) ;
 int mp_stack_set_limit (int) ;
 int mp_stack_set_top (int *) ;
 int mp_sys_argv ;
 int mp_sys_path ;
 scalar_t__ pyexec_friendly_repl () ;
 scalar_t__ pyexec_mode_kind ;
 scalar_t__ pyexec_raw_repl () ;

void samd_main(void) {
    mp_stack_set_top(&_estack);
    mp_stack_set_limit(&_estack - &_sstack - 1024);

    for (;;) {
        gc_init(&_sheap, &_eheap);
        mp_init();
        mp_obj_list_init(MP_OBJ_TO_PTR(mp_sys_path), 0);
        mp_obj_list_append(mp_sys_path, MP_OBJ_NEW_QSTR(MP_QSTR_));
        mp_obj_list_init(MP_OBJ_TO_PTR(mp_sys_argv), 0);

        for (;;) {
            if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
                if (pyexec_raw_repl() != 0) {
                    break;
                }
            } else {
                if (pyexec_friendly_repl() != 0) {
                    break;
                }
            }
        }

        mp_printf(MP_PYTHON_PRINTER, "MPY: soft reboot\n");
        gc_sweep_all();
        mp_deinit();
    }
}
