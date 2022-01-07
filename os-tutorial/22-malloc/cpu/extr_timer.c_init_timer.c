
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int IRQ0 ;
 int port_byte_out (int,int) ;
 int register_interrupt_handler (int ,int ) ;
 int timer_callback ;

void init_timer(u32 freq) {

    register_interrupt_handler(IRQ0, timer_callback);


    u32 divisor = 1193180 / freq;
    u8 low = (u8)(divisor & 0xFF);
    u8 high = (u8)( (divisor >> 8) & 0xFF);

    port_byte_out(0x43, 0x36);
    port_byte_out(0x40, low);
    port_byte_out(0x40, high);
}
