
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;
typedef int mp_obj_t ;


 scalar_t__ HEAP_END ;
 int LED_BUILTIN ;
 int MP_OBJ_NEW_QSTR (int ) ;
 scalar_t__ MP_OBJ_NULL ;
 int MP_QSTR_ ;
 int MP_QSTR_LED ;
 int MP_QSTR_Servo ;
 int MP_QSTR_analogRead ;
 int MP_QSTR_analogWrite ;
 int MP_QSTR_analogWriteFrequency ;
 int MP_QSTR_analogWriteResolution ;
 int MP_QSTR_delay ;
 int MP_QSTR_gc ;
 int MP_QSTR_gpio ;
 int MP_QSTR_help ;
 int MP_QSTR_info ;
 int MP_QSTR_led ;
 int MP_QSTR_main ;
 int MP_QSTR_pyb ;
 int MP_QSTR_source_dir ;
 int OUTPUT ;
 int PYB_LED_BUILTIN ;
 scalar_t__ PYEXEC_MODE_RAW_REPL ;
 int SCB_CCR ;
 int SCB_CCR_STKALIGN ;
 int _heap_start ;
 int flash_error (int) ;
 int gc_init (int *,void*) ;
 int led_init () ;
 int led_state (int ,int) ;
 int mp_init () ;
 int mp_make_function_n (int,int ) ;
 int mp_obj_list_append (int ,int ) ;
 int mp_obj_list_init (int ,int ) ;
 int mp_obj_new_module (int ) ;
 char* mp_obj_str_get_str (scalar_t__) ;
 int mp_stack_ctrl_init () ;
 int mp_stack_set_limit (int) ;
 int mp_store_attr (int ,int ,int ) ;
 int mp_store_name (int ,int ) ;
 int mp_sys_argv ;
 int mp_sys_path ;
 int pinMode (int ,int ) ;
 int pin_init0 () ;
 int printf (char*) ;
 int pyb_Servo ;
 int pyb_analog_read ;
 int pyb_analog_write ;
 int pyb_analog_write_frequency ;
 int pyb_analog_write_resolution ;
 scalar_t__ pyb_config_main ;
 int pyb_delay ;
 int pyb_gc ;
 int pyb_gpio_obj ;
 int pyb_help ;
 int pyb_info ;
 int pyb_led ;
 int pyb_led_type ;
 int pyb_main ;
 int pyb_source_dir ;
 int pyexec_file_if_exists (char*) ;
 scalar_t__ pyexec_friendly_repl () ;
 int pyexec_frozen_module (char*) ;
 scalar_t__ pyexec_mode_kind ;
 scalar_t__ pyexec_raw_repl () ;
 int readline_init0 () ;
 int vstr_add_str (int *,char*) ;
 int vstr_free (int *) ;
 int * vstr_new (int) ;
 char* vstr_null_terminated_str (int *) ;

int main(void) {




    SCB_CCR |= (1 << 9);

    mp_stack_ctrl_init();
    mp_stack_set_limit(10240);

    pinMode(LED_BUILTIN, OUTPUT);
    led_init();



soft_reset:

    led_state(PYB_LED_BUILTIN, 1);


    gc_init(&_heap_start, (void*)HEAP_END);


    mp_init();
    mp_obj_list_init(mp_sys_path, 0);
    mp_obj_list_append(mp_sys_path, MP_OBJ_NEW_QSTR(MP_QSTR_));
    mp_obj_list_init(mp_sys_argv, 0);

    readline_init0();

    pin_init0();
    if (!pyexec_file_if_exists("/boot.py")) {
        flash_error(4);
    }



    led_state(PYB_LED_BUILTIN, 0);





    {
        vstr_t *vstr = vstr_new(16);
        vstr_add_str(vstr, "/");
        if (pyb_config_main == MP_OBJ_NULL) {
            vstr_add_str(vstr, "main.py");
        } else {
            vstr_add_str(vstr, mp_obj_str_get_str(pyb_config_main));
        }
        if (!pyexec_file_if_exists(vstr_null_terminated_str(vstr))) {
            flash_error(3);
        }
        vstr_free(vstr);
    }




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

    printf("MPY: soft reboot\n");


    goto soft_reset;
}
