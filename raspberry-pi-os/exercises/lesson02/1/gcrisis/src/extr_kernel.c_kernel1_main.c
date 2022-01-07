
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_el () ;
 int init_printf (int ,int ) ;
 int printf (char*,int) ;
 int putc ;
 int uart_init (int) ;
 int uart_recv () ;
 int uart_send (int ) ;

void kernel1_main(void)
{

 uart_init(115200);
    init_printf(0,putc);

 while (1) {
        printf("current EL:%d\r\n",get_el());
        uart_send(uart_recv());
 }
}
