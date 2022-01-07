
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PHP_FNV_32_PRIME ;

__attribute__((used)) static uint32_t
fnv_32_buf(void *buf, size_t len, uint32_t hval, int alternate)
{
 unsigned char *bp = (unsigned char *)buf;
 unsigned char *be = bp + len;




 if (alternate == 0) {
  while (bp < be) {

   hval *= PHP_FNV_32_PRIME;


   hval ^= (uint32_t)*bp++;
  }
 } else {
  while (bp < be) {

   hval ^= (uint32_t)*bp++;


   hval *= PHP_FNV_32_PRIME;
  }
 }


 return hval;
}
