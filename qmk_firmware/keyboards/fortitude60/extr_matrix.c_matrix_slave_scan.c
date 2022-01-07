
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROWS_PER_HAND ;
 size_t SERIAL_LED_ADDR ;
 int _matrix_scan () ;
 int backlight_set (int ) ;
 scalar_t__ isLeftHand ;
 int * matrix ;
 int * serial_master_buffer ;
 int * serial_slave_buffer ;

void matrix_slave_scan(void) {
    _matrix_scan();

    int offset = (isLeftHand) ? 0 : ROWS_PER_HAND;

    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        serial_slave_buffer[i] = matrix[offset+i];
    }





}
