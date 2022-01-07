
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;
 int PORTB ;

__attribute__((used)) static
void setup_leds(void) {
  DDRB |= 0x60;
  PORTB |= 0x60;
}
