
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ1 ;
 int keyboard_callback ;
 int register_interrupt_handler (int ,int ) ;

void init_keyboard() {
   register_interrupt_handler(IRQ1, keyboard_callback);
}
