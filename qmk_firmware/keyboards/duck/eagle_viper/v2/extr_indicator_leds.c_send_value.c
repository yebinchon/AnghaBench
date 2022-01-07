
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum Device { ____Placeholder_Device } Device ;


 int Device_STATUSLED ;
 int send_bit_d4 (int) ;

void send_value(uint8_t byte, enum Device device) {
  for(uint8_t b = 0; b < 8; b++) {
    if(device == Device_STATUSLED) {
      send_bit_d4(byte & 0b10000000);
      byte <<= 1;
    }
  }
}
