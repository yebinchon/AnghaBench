
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ERROR_DISCONNECT_COUNT ;
 int ROWS_PER_HAND ;
 scalar_t__ _matrix_scan () ;
 scalar_t__ is_keyboard_master () ;
 scalar_t__* matrix ;
 int matrix_scan_quantum () ;
 int matrix_slave_scan_user () ;
 int thatHand ;
 int thisHand ;
 int transport_master (scalar_t__*) ;
 int transport_slave (scalar_t__*) ;

uint8_t matrix_scan(void) {
  uint8_t ret = _matrix_scan();

  if (is_keyboard_master()) {
    static uint8_t error_count;

    if (!transport_master(matrix + thatHand)) {
      error_count++;

      if (error_count > ERROR_DISCONNECT_COUNT) {

        for (int i = 0; i < ROWS_PER_HAND; ++i) {
          matrix[thatHand + i] = 0;
        }
      }
    } else {
      error_count = 0;
    }

    matrix_scan_quantum();
  } else {
    transport_slave(matrix + thisHand);
    matrix_slave_scan_user();
  }

  return ret;
}
