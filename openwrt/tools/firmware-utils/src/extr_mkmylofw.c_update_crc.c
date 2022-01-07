
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc_32_tab ;

void
update_crc(uint8_t *p, uint32_t len, uint32_t *crc)
{
 uint32_t t;

 t = *crc ^ 0xFFFFFFFFUL;
 while (len--) {
  t = crc_32_tab[(t ^ *p++) & 0xff] ^ (t >> 8);
 }
 *crc = t ^ 0xFFFFFFFFUL;
}
