
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int DDRD ;
 int DDRE ;
 int PORTB ;
 int PORTD ;
 int PORTE ;

void backlight_init_ports(void)
{
  DDRD |= 0b11010000;
  PORTD &= ~0b01010000;
  PORTD |= 0b10000000;
  DDRB |= 0b00011111;
  PORTB &= ~0b00001110;
  PORTB |= 0b00010001;
  DDRE |= 0b01000000;
  PORTE &= ~0b01000000;
}
