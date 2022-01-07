
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RGBLIGHT_MODE_KNIGHT ;
 int initStringData () ;
 int relativityActive ;
 int relativityTimer ;
 int rgblight_mode (int ) ;
 int timer_read () ;

void activateRelativity(void)
{
  initStringData();
  rgblight_mode(RGBLIGHT_MODE_KNIGHT);
  relativityTimer = timer_read();
  relativityActive = 1;
}
