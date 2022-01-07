
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int ADC_5V ;
 double adc_get (int ) ;
 int gcr_compute () ;
 scalar_t__ timer_read64 () ;
 double v_5v ;
 double v_5v_avg ;

void main_subtask_power_check(void) {
    static uint64_t next_5v_checkup = 0;

    if (timer_read64() > next_5v_checkup) {
        next_5v_checkup = timer_read64() + 5;

        v_5v = adc_get(ADC_5V);
        v_5v_avg = 0.9 * v_5v_avg + 0.1 * v_5v;




    }
}
