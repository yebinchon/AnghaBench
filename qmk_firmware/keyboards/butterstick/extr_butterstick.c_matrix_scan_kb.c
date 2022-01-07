
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_COLS ;
 scalar_t__ MATRIX_ROWS ;
 scalar_t__ matrix_is_on (scalar_t__,scalar_t__) ;
 int matrix_scan_user () ;
 int xprintf (char*,scalar_t__,scalar_t__) ;

void matrix_scan_kb(void) {






  matrix_scan_user();
}
