
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTB ;
 int PORTD ;

void set_layer_led(int layerId) {
 PORTD |= (1<<5);
 PORTB &= ~(1<<6);
 PORTB |= (1<<0);
 switch(layerId) {
  case 0:
   PORTD &= ~(1<<5);
   break;
  case 1:
   PORTB |= (1<<6);
   break;
  case 2:
   PORTB &= ~(1<<0);
   break;
 }
}
