
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWI_BITLENGTH_FROM_FREQ (int,int) ;
 int TWI_BIT_PRESCALE_1 ;
 int TWI_Init (int ,int ) ;

void expander_init(void) {
    TWI_Init(TWI_BIT_PRESCALE_1, TWI_BITLENGTH_FROM_FREQ(1, 400000));
}
