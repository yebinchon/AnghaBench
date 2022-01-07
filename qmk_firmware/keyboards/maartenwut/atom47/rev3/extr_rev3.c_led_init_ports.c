
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRE ;
 int PORTE ;

void led_init_ports(void) {

    DDRE |= (1 << 6);


 PORTE |= (1 << 6);
}
