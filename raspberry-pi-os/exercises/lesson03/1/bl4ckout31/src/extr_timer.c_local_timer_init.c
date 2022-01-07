
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LTIMER_CTRL ;
 int LTIMER_CTRL_VALUE ;
 int interval ;
 int put32 (int ,int) ;

void local_timer_init ( void )
{
 put32(LTIMER_CTRL, (interval | LTIMER_CTRL_VALUE));
}
