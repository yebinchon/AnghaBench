
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPFSEL1 ;
 int GPPUD ;
 int GPPUDCLK0 ;
 int UART_CTRL_REG ;
 int UART_FBRD ;
 int UART_FBRD_REG ;
 int UART_IBRD ;
 int UART_IBRD_REG ;
 int UART_LCRH_REG ;
 int delay (int) ;
 unsigned int get32 (int ) ;
 int put32 (int ,int) ;

void uart_init ( void )
{
 unsigned int selector;

 selector = get32(GPFSEL1);
 selector &= ~(7<<12);
 selector |= 4<<12;
 selector &= ~(7<<15);
 selector |= 4<<15;
 put32(GPFSEL1,selector);

 put32(GPPUD,0);
 delay(150);
 put32(GPPUDCLK0,(1<<14)|(1<<15));
 delay(150);
 put32(GPPUDCLK0,0);


 put32(UART_IBRD_REG, UART_IBRD);
 put32(UART_FBRD_REG, UART_FBRD);
 put32(UART_LCRH_REG, 0x70);
 put32(UART_CTRL_REG, 0x301);
}
