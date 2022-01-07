
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udc_reset () ;
 int udd_disable () ;

void udc_stop(void) {
    udd_disable();
    udc_reset();
}
