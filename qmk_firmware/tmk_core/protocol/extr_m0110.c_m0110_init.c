
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _delay_ms (int) ;
 int idle () ;

void m0110_init(void) {
    idle();
    _delay_ms(1000);
}
