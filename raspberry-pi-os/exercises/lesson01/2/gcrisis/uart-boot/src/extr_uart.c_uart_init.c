
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPFSEL1 ;
 int GPPUD ;
 int GPPUDCLK0 ;
 int UART_CR ;
 int UART_FBRD ;
 int UART_IBRD ;
 int UART_IMSC ;
 int UART_LCRH ;
 int delay (int) ;
 unsigned int get32 (int ) ;
 int put32 (int ,int) ;

void uart_init (int baudrate)
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

    int ibrd = 3000000/baudrate;
    int fbrd = (int)((3000000.0f/baudrate -ibrd)*64.f + 0.5);

 put32(UART_IBRD,ibrd);
 put32(UART_FBRD,fbrd);
 put32(UART_LCRH,(3<<5));
    put32(UART_IMSC, 0);

 put32(UART_CR,(1<<8)|(1<<9)|1);
}
