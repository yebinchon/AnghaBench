
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMBO_TERM ;
 scalar_t__ b_combo_enable ;
 int dump_key_buffer (int) ;
 int is_active ;
 scalar_t__ timer ;
 scalar_t__ timer_elapsed (scalar_t__) ;

void matrix_scan_combo(void) {
    if (b_combo_enable && is_active && timer && timer_elapsed(timer) > COMBO_TERM) {



        is_active = 0;
        dump_key_buffer(1);
    }
}
