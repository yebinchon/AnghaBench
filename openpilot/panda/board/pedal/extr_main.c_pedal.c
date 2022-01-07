
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADCCHAN_ACCEL0 ;
 int ADCCHAN_ACCEL1 ;
 int MAX (int ,int ) ;
 scalar_t__ NO_FAULT ;
 int adc_get (int ) ;
 int dac_set (int,int ) ;
 int gas_set_0 ;
 int gas_set_1 ;
 int pdl0 ;
 int pdl1 ;
 scalar_t__ state ;
 int watchdog_feed () ;

void pedal(void) {

  pdl0 = adc_get(ADCCHAN_ACCEL0);
  pdl1 = adc_get(ADCCHAN_ACCEL1);


  if (state == NO_FAULT) {
    dac_set(0, MAX(gas_set_0, pdl0));
    dac_set(1, MAX(gas_set_1, pdl1));
  } else {
    dac_set(0, pdl0);
    dac_set(1, pdl1);
  }

  watchdog_feed();
}
