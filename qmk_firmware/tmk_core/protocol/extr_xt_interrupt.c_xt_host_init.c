
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XT_CLOCK_IN () ;
 int XT_CLOCK_LO () ;
 int XT_DATA_IN () ;
 int XT_DATA_LO () ;
 int XT_INT_INIT () ;
 int XT_INT_OFF () ;
 int XT_INT_ON () ;
 int XT_RESET () ;
 int _delay_ms (int) ;

void xt_host_init(void) {
    XT_INT_INIT();
    XT_INT_OFF();







    XT_DATA_LO();
    XT_CLOCK_LO();
    _delay_ms(20);


    XT_CLOCK_IN();
    XT_DATA_IN();

    XT_INT_ON();
}
