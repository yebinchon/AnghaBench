
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARMTIMER_CTRL ;
 int ARMTIMER_CTRL_23BIT ;
 int ARMTIMER_CTRL_ENABLE ;
 int ARMTIMER_CTRL_INT_ENABLE ;
 int ARMTIMER_CTRL_PRESCALE256 ;
 int ARMTIMER_LOAD ;
 int interval ;
 int put32 (int ,int) ;

void armtimer_init ( void )
{
 put32(ARMTIMER_LOAD, interval);
 put32(ARMTIMER_CTRL, ARMTIMER_CTRL_23BIT |
       ARMTIMER_CTRL_PRESCALE256 |
       ARMTIMER_CTRL_ENABLE |
       ARMTIMER_CTRL_INT_ENABLE);
}
