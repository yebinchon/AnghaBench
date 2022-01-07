
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _PP ;
 unsigned long _PPG ;
 int _delay_ms (int) ;
 int backlight_toggle () ;
 int default_layer_set (unsigned long) ;

void enable_gaming_layer(void) {
    default_layer_set((1UL << _PP) | (1UL << _PPG));





}
