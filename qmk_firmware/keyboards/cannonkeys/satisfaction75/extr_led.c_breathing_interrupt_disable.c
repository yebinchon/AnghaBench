
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWMD3 ;
 int pwmCFG ;
 int pwmStart (int *,int *) ;
 int pwmStop (int *) ;

void breathing_interrupt_disable(void){
    pwmStop(&PWMD3);
    pwmStart(&PWMD3, &pwmCFG);
}
