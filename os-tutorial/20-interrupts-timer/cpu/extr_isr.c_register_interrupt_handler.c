
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int isr_t ;


 int * interrupt_handlers ;

void register_interrupt_handler(u8 n, isr_t handler) {
    interrupt_handlers[n] = handler;
}
