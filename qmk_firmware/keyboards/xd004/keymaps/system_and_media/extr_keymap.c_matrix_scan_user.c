
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SUPER_ALT_F4_TIMER ;
 int alt_f4_timer ;
 int is_alt_f4_active ;
 scalar_t__ timer_elapsed (int ) ;

void matrix_scan_user(void) {
    if (is_alt_f4_active && timer_elapsed(alt_f4_timer) > SUPER_ALT_F4_TIMER) {
        is_alt_f4_active = 0;
    }
}
