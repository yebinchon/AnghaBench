
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int HDR_OFF_CHECKSUM ;
 int crc32_accumulate_8 (int ,int ) ;
 int writel (int *,int ,int ) ;

__attribute__((used)) static void crc32_csum(uint8_t *buf, const size_t len)
{
 uint32_t crc;
 size_t i;

 crc = ~0;
 for (i = 0; i < len; i += 4) {
  crc = crc32_accumulate_8(crc, buf[i + 3]);
  crc = crc32_accumulate_8(crc, buf[i + 2]);
  crc = crc32_accumulate_8(crc, buf[i + 1]);
  crc = crc32_accumulate_8(crc, buf[i]);
 }
 crc = ~crc;

 writel(buf, HDR_OFF_CHECKSUM, crc);
}
