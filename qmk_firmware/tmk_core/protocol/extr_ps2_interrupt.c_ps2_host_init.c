
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_INT_INIT () ;
 int PS2_INT_ON () ;
 int idle () ;

void ps2_host_init(void) {
    idle();
    PS2_INT_INIT();
    PS2_INT_ON();


}
