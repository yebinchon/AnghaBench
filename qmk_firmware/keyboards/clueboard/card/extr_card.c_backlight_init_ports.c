
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BL_BLUE ;
 int BL_GREEN ;
 int BL_RED ;
 int DDRB ;
 int ICR1 ;
 int TCCR1A ;
 int TCCR1B ;

void backlight_init_ports(void)
{

 DDRB |= (1<<7)|(1<<6)|(1<<5);


 ICR1 = 0xFFFF;
 TCCR1A = 0b10101010;
 TCCR1B = 0b00011001;

 BL_RED = 0xFFFF;
 BL_GREEN = 0xFFFF;
 BL_BLUE = 0xFFFF;
}
