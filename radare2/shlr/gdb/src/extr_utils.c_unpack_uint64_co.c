
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int unpack_uint64 (char*,int) ;

uint64_t unpack_uint64_co(char *buff, int len) {
 uint64_t result = 0;
 int i;
 for (i = len - 2; i >= 0; i -= 2) {
  result |= unpack_uint64 (&buff[i], 2);
  if (i) {
   result <<= 8;
  }
 }
 return result;
}
