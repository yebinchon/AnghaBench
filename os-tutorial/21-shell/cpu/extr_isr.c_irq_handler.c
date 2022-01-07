
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int int_no; } ;
typedef TYPE_1__ registers_t ;
typedef int (* isr_t ) (TYPE_1__) ;


 scalar_t__* interrupt_handlers ;
 int port_byte_out (int,int) ;

void irq_handler(registers_t r) {


    if (r.int_no >= 40) port_byte_out(0xA0, 0x20);
    port_byte_out(0x20, 0x20);


    if (interrupt_handlers[r.int_no] != 0) {
        isr_t handler = interrupt_handlers[r.int_no];
        handler(r);
    }
}
