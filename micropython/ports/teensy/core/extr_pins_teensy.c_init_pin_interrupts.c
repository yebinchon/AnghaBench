
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_PORTA ;
 int IRQ_PORTB ;
 int IRQ_PORTC ;
 int IRQ_PORTD ;
 int IRQ_PORTE ;
 int NVIC_ENABLE_IRQ (int ) ;

void init_pin_interrupts(void)
{

 NVIC_ENABLE_IRQ(IRQ_PORTA);
 NVIC_ENABLE_IRQ(IRQ_PORTB);
 NVIC_ENABLE_IRQ(IRQ_PORTC);
 NVIC_ENABLE_IRQ(IRQ_PORTD);
 NVIC_ENABLE_IRQ(IRQ_PORTE);



}
