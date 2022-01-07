
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LEFT ;
 int RIGHT ;
 int i2c_read_hand (int ) ;
 int matrix_scan_quantum () ;

uint8_t matrix_scan(void) {
  uint8_t ret = 0;
  ret |= i2c_read_hand(LEFT);
  ret |= i2c_read_hand(RIGHT);
  matrix_scan_quantum();
  return ret;
}
