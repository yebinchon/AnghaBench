
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIN_OUTPUT ;
 int clock ;
 int gpio_dir (int *,int ) ;
 int gpio_write (int *,int) ;

void clock_hi(void) {
    gpio_dir(&clock, PIN_OUTPUT);
    gpio_write(&clock, 1);
}
