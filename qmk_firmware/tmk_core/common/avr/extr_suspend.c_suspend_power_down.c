
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDTO_15MS ;
 int power_down (int ) ;
 int suspend_power_down_kb () ;

void suspend_power_down(void) {
    suspend_power_down_kb();


    power_down(WDTO_15MS);

}
