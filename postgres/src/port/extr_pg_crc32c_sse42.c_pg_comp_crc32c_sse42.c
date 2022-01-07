
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef scalar_t__ uint32 ;
typedef scalar_t__ pg_crc32c ;


 scalar_t__ _mm_crc32_u32 (scalar_t__,unsigned int const) ;
 scalar_t__ _mm_crc32_u64 (scalar_t__,int const) ;
 scalar_t__ _mm_crc32_u8 (scalar_t__,unsigned char const) ;

pg_crc32c
pg_comp_crc32c_sse42(pg_crc32c crc, const void *data, size_t len)
{
 const unsigned char *p = data;
 const unsigned char *pend = p + len;
 while (p + 8 <= pend)
 {
  crc = (uint32) _mm_crc32_u64(crc, *((const uint64 *) p));
  p += 8;
 }


 if (p + 4 <= pend)
 {
  crc = _mm_crc32_u32(crc, *((const unsigned int *) p));
  p += 4;
 }
 while (p < pend)
 {
  crc = _mm_crc32_u8(crc, *p);
  p++;
 }

 return crc;
}
