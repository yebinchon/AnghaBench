
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintf (char*) ;
 int initialized ;
 int reset_rgb () ;
 int rgblight_enable () ;

void matrix_init_user(void) {
  if (!initialized){
      dprintf("Initializing in matrix_scan_user");
      rgblight_enable();
      reset_rgb();
      initialized = 1;
    }
}
