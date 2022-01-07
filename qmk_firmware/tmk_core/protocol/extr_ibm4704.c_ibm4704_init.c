
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBM4704_INT_INIT () ;
 int IBM4704_INT_ON () ;
 int idle () ;
 int inhibit () ;

void ibm4704_init(void) {
    inhibit();
    IBM4704_INT_INIT();
    IBM4704_INT_ON();
    idle();
}
