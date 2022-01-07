
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_CTRL ;
 int interval ;
 int put32 (int ,int) ;

void timer_init ( void )
{

 put32(TIMER_CTRL, ((1<<28) | interval));
}
