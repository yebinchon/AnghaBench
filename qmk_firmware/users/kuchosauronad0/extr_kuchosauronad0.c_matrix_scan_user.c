
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int matrix_scan_keymap () ;
 int matrix_scan_rgb () ;
 int startup_user () ;

__attribute__ ((weak))
void matrix_scan_user(void){
  static bool has_ran_yet;
  if (!has_ran_yet) {
    has_ran_yet = 1;
    startup_user();
  }
  matrix_scan_keymap();
}
