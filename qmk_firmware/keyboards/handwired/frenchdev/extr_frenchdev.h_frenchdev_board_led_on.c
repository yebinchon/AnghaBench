
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRD ;
 int PORTD ;

inline void frenchdev_board_led_on(void) { DDRD |= (1<<6); PORTD |= (1<<6); }
