
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;



uint64
read_tar_number(const char *s, int len)
{
 uint64 result = 0;

 if (*s == '\200')
 {

  while (--len)
  {
   result <<= 8;
   result |= (unsigned char) (*++s);
  }
 }
 else
 {

  while (len-- && *s >= '0' && *s <= '7')
  {
   result <<= 3;
   result |= (*s - '0');
   s++;
  }
 }
 return result;
}
