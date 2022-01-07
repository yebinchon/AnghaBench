
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int ut16 ;


 int POLY ;

ut16 crc16(const unsigned char *data_p, size_t length) {
 ut8 i;
 ut32 data;
 ut32 crc = 0xFFFF;

 if (length == 0) {
  return 0;
 }
 do {
  data = *data_p++;
  for (i = 0; i < 8; i++) {
   if ((crc ^ data) & 1) {
    crc = (crc >> 1) ^ POLY;
   } else {
    crc >>= 1;
   }
   data >>= 1;
  }
 } while (--length > 0);

 crc = ~crc;
 data = crc;
 crc = (crc << 8) | ((data >> 8) & 0xff);
 return (ut16) (crc);
}
