
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPFSEL1 ;
 int GPPUD ;
 int GPPUDCLK0 ;
 int UARTLCR_LCRH ;
 int UART_CR ;
 int UART_FBRD ;
 int UART_IBRD ;
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

 put32(UART_CR,0);

 put32(UART_IBRD,26);
 put32(UART_FBRD,3);
 put32(UARTLCR_LCRH,0x60);

 put32(UART_CR,0x301);
}
