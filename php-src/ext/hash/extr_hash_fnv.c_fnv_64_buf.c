
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PHP_FNV_64_PRIME ;

__attribute__((used)) static uint64_t
fnv_64_buf(void *buf, size_t len, uint64_t hval, int alternate)
{
 unsigned char *bp = (unsigned char *)buf;
 unsigned char *be = bp + len;





 if (alternate == 0) {
  while (bp < be) {

   hval *= PHP_FNV_64_PRIME;


   hval ^= (uint64_t)*bp++;
  }
  } else {
  while (bp < be) {

   hval ^= (uint64_t)*bp++;


   hval *= PHP_FNV_64_PRIME;
   }
 }


 return hval;
}
