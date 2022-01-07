
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int hex2int (int ) ;

uint64_t unpack_uint64(char *buff, int len) {
 int nibble;
 uint64_t retval = 0;
 while (len) {
  nibble = hex2int (*buff++);
  retval |= nibble;
  len--;
  if (len) {
   retval = retval << 4;
  }
 }
 return retval;
}
