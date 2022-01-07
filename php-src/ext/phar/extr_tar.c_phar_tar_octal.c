
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FAILURE ;
 int SUCCESS ;

__attribute__((used)) static int phar_tar_octal(char *buf, uint32_t val, int len)
{
 char *p = buf;
 int s = len;

 p += len;
 while (s-- > 0) {
  *--p = (char)('0' + (val & 7));
  val >>= 3;
 }

 if (val == 0)
  return SUCCESS;


 while (len-- > 0)
  *p++ = '7';

 return FAILURE;
}
