
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPFSEL1 ;
 int GPPUD ;
 int GPPUDCLK0 ;
 int U_CR_REG ;
 int U_FBRD_REG ;
 int U_IBRD_REG ;
 int U_IMSC_REG ;
 int U_LCRH_REG ;
 int delay (int) ;
 unsigned int get32 (int ) ;
 int put32 (int ,int) ;

void uart_init (void)
{
 unsigned int selector;

 selector = get32(GPFSEL1);
 selector &= ~(7<<12);
 selector |= 4<<12;
 selector &= ~(7<<15);
 selector |= 4<<15;
 put32(GPFSEL1, selector);

 put32(GPPUD, 0);
 delay(150);
 put32(GPPUDCLK0, (1<<14) | (1<<15));
 delay(150);
 put32(GPPUDCLK0, 0);


 put32(U_CR_REG, 0);
 put32(U_IBRD_REG, 26);
 put32(U_FBRD_REG, 3);

 put32(U_LCRH_REG, (1<<4) | (3<<5));
 put32(U_IMSC_REG, 0);
 put32(U_CR_REG, 1 | (1<<8) | (1<<9));
}
