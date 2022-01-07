
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ean13 ;


 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static ean13
str2ean(const char *num)
{
 ean13 ean = 0;

 while (*num)
 {
  if (isdigit((unsigned char) *num))
   ean = 10 * ean + (*num - '0');
  num++;
 }
 return (ean << 1);
}
