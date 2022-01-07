
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interrupt_char ;

void mp_hal_set_interrupt_char(int c) {
    interrupt_char = c;
}
