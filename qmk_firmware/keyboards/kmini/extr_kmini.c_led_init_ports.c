
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDRB ;

void led_init_ports(void) {
    DDRB |= (1<<1);
    DDRB |= (1<<2);
    DDRB |= (1<<3);
}
