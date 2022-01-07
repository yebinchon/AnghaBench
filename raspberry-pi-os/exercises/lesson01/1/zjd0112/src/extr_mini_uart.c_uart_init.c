
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUX_ENABLES ;
 int AUX_MU_BAUD_REG ;
 int AUX_MU_CNTL_REG ;
 int AUX_MU_IER_REG ;
 int AUX_MU_LCR_REG ;
 int AUX_MU_MCR_REG ;
 int GPFSEL1 ;
 int GPPUD ;
 int GPPUDCLK0 ;
 unsigned int SYSTEM_CLOCK_FREQ ;
 int delay (int) ;
 unsigned int get32 (int ) ;
 int put32 (int ,int) ;

void uart_init ( unsigned int baud_rate )
{
 unsigned int selector;
    unsigned int baudReg_val = 0;

 selector = get32(GPFSEL1);
 selector &= ~(7<<12);
 selector |= 2<<12;
 selector &= ~(7<<15);
 selector |= 2<<15;
 put32(GPFSEL1,selector);

 put32(GPPUD,0);
 delay(150);
 put32(GPPUDCLK0,(1<<14)|(1<<15));
 delay(150);
 put32(GPPUDCLK0,0);

 put32(AUX_ENABLES,1);
 put32(AUX_MU_CNTL_REG,0);
 put32(AUX_MU_IER_REG,0);
 put32(AUX_MU_LCR_REG,3);
 put32(AUX_MU_MCR_REG,0);


    baudReg_val = ((SYSTEM_CLOCK_FREQ / (baud_rate*8)) - 1) & 0xFFFF;
    put32(AUX_MU_BAUD_REG, baudReg_val);

 put32(AUX_MU_CNTL_REG,3);
}
