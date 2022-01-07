
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_C1 ;
 int TIMER_CLO ;
 int curVal ;
 int get32 (int ) ;
 scalar_t__ interval ;
 int put32 (int ,int ) ;

void timer_init ( void )
{
 curVal = get32(TIMER_CLO);
 curVal += interval;
 put32(TIMER_C1, curVal);
}
