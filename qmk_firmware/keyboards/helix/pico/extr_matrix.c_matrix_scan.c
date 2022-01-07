
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ROWS_PER_HAND ;
 scalar_t__ isLeftHand ;
 scalar_t__ is_master ;
 int * matrix ;
 int matrix_master_scan () ;
 int matrix_scan_quantum () ;
 int matrix_slave_scan () ;
 int * serial_master_buffer ;

uint8_t matrix_scan(void)
{
    if (is_master) {
        matrix_master_scan();
    }else{
        matrix_slave_scan();

          int offset = (isLeftHand) ? ROWS_PER_HAND : 0;

          for (int i = 0; i < ROWS_PER_HAND; ++i) {
              matrix[offset+i] = serial_master_buffer[i];
          }

        matrix_scan_quantum();
    }
    return 1;
}
