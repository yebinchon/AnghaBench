
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROWS_PER_HAND ;
 int RXLED0 ;
 int RXLED1 ;
 scalar_t__ isLeftHand ;
 int * matrix ;
 int * serial_slave_buffer ;
 int serial_update_buffers () ;

int serial_transaction(void) {
  int slaveOffset = (isLeftHand) ? (ROWS_PER_HAND) : 0;
  int ret=serial_update_buffers();
  if (ret ) {
      if(ret==2)RXLED1;
      return 1;
  }
RXLED0;
  for (int i = 0; i < ROWS_PER_HAND; ++i) {
      matrix[slaveOffset+i] = serial_slave_buffer[i];
  }
  return 0;
}
