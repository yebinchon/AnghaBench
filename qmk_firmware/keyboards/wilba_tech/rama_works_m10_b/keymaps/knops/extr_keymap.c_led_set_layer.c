
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_init_ports () ;

void led_set_layer(int layer)
{
    led_init_ports();

    led_set_layer(0);


}
