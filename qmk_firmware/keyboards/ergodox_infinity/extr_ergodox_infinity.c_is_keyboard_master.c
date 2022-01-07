
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_serial_link_master () ;

bool is_keyboard_master(void) {
    return is_serial_link_master();
}
