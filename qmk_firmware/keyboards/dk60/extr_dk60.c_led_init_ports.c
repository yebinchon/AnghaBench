
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRE ;
 int DDRF ;

void led_init_ports(void) {

    DDRE |= (1<<6);
    DDRF |= (1<<0);
}
