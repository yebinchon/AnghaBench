
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTCD1 ;
 int backlight_init_ports () ;
 int eeprom_init_kb () ;
 int last_timespec ;
 int matrix_init_user () ;
 int queue_for_send ;
 int rtcGetTime (int *,int *) ;

void matrix_init_kb(void)
{
 eeprom_init_kb();
  rtcGetTime(&RTCD1, &last_timespec);
  queue_for_send = 1;
  backlight_init_ports();
 matrix_init_user();
}
