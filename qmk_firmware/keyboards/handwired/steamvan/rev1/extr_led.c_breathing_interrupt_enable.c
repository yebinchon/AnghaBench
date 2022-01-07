
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWMD4 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int) ;
 int chSysLockFromISR () ;
 int chSysUnlockFromISR () ;
 int pwmCFG_breathing ;
 int pwmEnableChannelI (int *,int,int ) ;
 int pwmEnablePeriodicNotification (int *) ;
 int pwmStart (int *,int *) ;
 int pwmStop (int *) ;

void breathing_interrupt_enable(void){
    pwmStop(&PWMD4);
    pwmStart(&PWMD4, &pwmCFG_breathing);
    chSysLockFromISR();
    pwmEnablePeriodicNotification(&PWMD4);
    pwmEnableChannelI(
      &PWMD4,
      2,
      PWM_FRACTION_TO_WIDTH(
        &PWMD4,
        0xFFFF,
        0xFFFF
      )
    );
    chSysUnlockFromISR();
}
