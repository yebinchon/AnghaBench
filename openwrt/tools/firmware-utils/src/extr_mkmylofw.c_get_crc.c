
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int update_crc (int *,scalar_t__,scalar_t__*) ;

uint32_t
get_crc(uint8_t *p, uint32_t len)
{
 uint32_t crc;

 crc = 0;
 update_crc(p ,len , &crc);
 return crc;
}
