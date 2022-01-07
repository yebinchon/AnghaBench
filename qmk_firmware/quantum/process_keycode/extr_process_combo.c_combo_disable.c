
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b_combo_enable ;
 int dump_key_buffer (int) ;
 int is_active ;
 scalar_t__ timer ;

void combo_disable(void) {
    b_combo_enable = is_active = 0;
    timer = 0;
    dump_key_buffer(1);
}
