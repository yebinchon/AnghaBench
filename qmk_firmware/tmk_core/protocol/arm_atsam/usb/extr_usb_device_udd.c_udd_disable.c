
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDD_STATE_OFF ;
 int udd_detach () ;
 int udd_sleep_mode (int ) ;

void udd_disable(void) {
    udd_detach();

    udd_sleep_mode(UDD_STATE_OFF);
}
