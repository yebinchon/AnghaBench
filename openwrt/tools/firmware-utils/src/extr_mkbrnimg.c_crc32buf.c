
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int uint32_t ;


 int BPB ;
 int* crc32 ;

__attribute__((used)) static uint32_t crc32buf(unsigned char *buf, size_t len)
{
 uint32_t crc = 0xFFFFFFFF;

 for (; len; len--, buf++)
  crc = crc32[(uint8_t)crc ^ *buf] ^ (crc >> BPB);
 return ~crc;
}
