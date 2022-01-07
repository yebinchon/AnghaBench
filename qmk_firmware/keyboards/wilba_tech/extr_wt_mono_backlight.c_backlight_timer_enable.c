
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCIE3A ;
 int TIMSK3 ;
 int _BV (int ) ;

void backlight_timer_enable(void)
{
 TIMSK3 |= _BV(OCIE3A);
}
