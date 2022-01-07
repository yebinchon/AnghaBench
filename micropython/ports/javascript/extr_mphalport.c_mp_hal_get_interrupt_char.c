
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_interrupt_char ;

int mp_hal_get_interrupt_char(void) {
    return mp_interrupt_char;
}
