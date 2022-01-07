
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OpenDrain ;
 int P0_8 ;
 int PullNone ;
 int data ;
 int gpio_init (int *,int ) ;
 int gpio_mode (int *,int) ;

void data_init(void) {
    gpio_init(&data, P0_8);
    gpio_mode(&data, OpenDrain | PullNone);
}
