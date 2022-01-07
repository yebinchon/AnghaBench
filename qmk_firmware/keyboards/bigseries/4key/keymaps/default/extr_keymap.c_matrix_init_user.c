
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintf (char*) ;
 int initialized ;
 int rgblight_enable () ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int ,int,int) ;
 int rgblight_setrgb (int,int,int) ;

void matrix_init_user(void) {
  if (!initialized){
      dprintf("Initializing in matrix_scan_user");
      rgblight_enable();
      rgblight_mode(7);
      rgblight_sethsv(0,255,255);
      rgblight_setrgb(0x00, 0x00, 0xFF);
      initialized = 1;
    }
}
