
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int idt_gate_t ;
struct TYPE_2__ {int limit; scalar_t__ base; } ;


 int IDT_ENTRIES ;
 int idt ;
 TYPE_1__ idt_reg ;

void set_idt() {
    idt_reg.base = (uint32_t) &idt;
    idt_reg.limit = IDT_ENTRIES * sizeof(idt_gate_t) - 1;

    asm volatile("lidtl (%0)" : : "r" (&idt_reg));
}
