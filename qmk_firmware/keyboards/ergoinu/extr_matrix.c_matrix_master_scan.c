
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ ERROR_DISCONNECT_COUNT ;
 int ROWS_PER_HAND ;
 int TXLED0 ;
 int TXLED1 ;
 int _matrix_scan () ;
 scalar_t__ error_count ;
 scalar_t__ isLeftHand ;
 scalar_t__* matrix ;
 int matrix_scan_quantum () ;
 scalar_t__* serial_master_buffer ;
 scalar_t__ serial_transaction () ;

uint8_t matrix_master_scan(void) {

  int ret = _matrix_scan();

  int offset = (isLeftHand) ? 0 : ROWS_PER_HAND;

  for (int i = 0; i < ROWS_PER_HAND; ++i) {
    serial_master_buffer[i] = matrix[offset+i];
  }

  if( serial_transaction() ) {

    TXLED1;

    error_count++;

    if (error_count > ERROR_DISCONNECT_COUNT) {

      int slaveOffset = (isLeftHand) ? (ROWS_PER_HAND) : 0;
      for (int i = 0; i < ROWS_PER_HAND; ++i) {
          matrix[slaveOffset+i] = 0;
      }
    }
  } else {

    TXLED0;
    error_count = 0;
  }
  matrix_scan_quantum();
  return ret;
}
