
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int readDataFromTS (int) ;

uint16_t touchDetectionRoutine(void) {
  uint16_t data;
  uint8_t temp1, temp2;

  temp1 = readDataFromTS(0x04);
  temp2 = readDataFromTS(0x03);
  data = temp1;
  data = (data << 8) | temp2;
  return data;

}
