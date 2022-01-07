
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIN_OUTPUT ;
 int data ;
 int gpio_dir (int *,int ) ;
 int gpio_write (int *,int ) ;

void data_lo(void) {
    gpio_dir(&data, PIN_OUTPUT);
    gpio_write(&data, 0);
}
