
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bootloader_jump () ;
 int clear_keyboard () ;
 int matrix_get_row (int) ;

void matrix_scan_user(void) {

  if (matrix_get_row(0) == 0b111 && matrix_get_row(1) == 0b111) {
    clear_keyboard();
    bootloader_jump();
  }
}
