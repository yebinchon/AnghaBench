
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static unsigned
dehyphenate(char *bufO, char *bufI)
{
 unsigned ret = 0;

 while (*bufI)
 {
  if (isdigit((unsigned char) *bufI))
  {
   *bufO++ = *bufI;
   ret++;
  }
  bufI++;
 }
 *bufO = '\0';
 return ret;
}
