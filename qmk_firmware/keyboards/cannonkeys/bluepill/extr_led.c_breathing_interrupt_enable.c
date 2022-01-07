
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWMD1 ;
 int PWM_FRACTION_TO_WIDTH (int *,int,int) ;
 int chSysLockFromISR () ;
 int chSysUnlockFromISR () ;
 int printf (char*) ;
 int pwmCFG_breathing ;
 int pwmEnableChannelI (int *,int ,int ) ;
 int pwmEnablePeriodicNotification (int *) ;
 int pwmStart (int *,int *) ;
 int pwmStop (int *) ;

void breathing_interrupt_enable(void){
    pwmStop(&PWMD1);
    printf("starting with callback\n");
    pwmStart(&PWMD1, &pwmCFG_breathing);
    chSysLockFromISR();
    pwmEnablePeriodicNotification(&PWMD1);
    pwmEnableChannelI(
      &PWMD1,
      0,
      PWM_FRACTION_TO_WIDTH(
        &PWMD1,
        0xFFFF,
        0xFFFF
      )
    );
    chSysUnlockFromISR();
}
