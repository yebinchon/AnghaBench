
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRC ;
 int PORTB ;
 int PORTC ;

__attribute__((used)) static void init_rows(void)
{
  DDRC &= ~0b11000000;
  DDRB &= ~0b00110110;
  PORTC |= 0b11000000;
  PORTB |= 0b00110110;
}
