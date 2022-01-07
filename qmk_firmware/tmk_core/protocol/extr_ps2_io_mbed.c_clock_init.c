
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OpenDrain ;
 int P0_9 ;
 int PullNone ;
 int clock ;
 int gpio_init (int *,int ) ;
 int gpio_mode (int *,int) ;

void clock_init(void) {
    gpio_init(&clock, P0_9);
    gpio_mode(&clock, OpenDrain | PullNone);
}
