
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int * memchr (int const*,char const,int) ;
 scalar_t__ memcmp (int const*,char const*,int) ;

__attribute__((used)) static const uint8 *
find_str(const uint8 *data, const uint8 *data_end, const char *str, int strlen)
{
 const uint8 *p = data;

 if (!strlen)
  return ((void*)0);
 if (data_end - data < strlen)
  return ((void*)0);
 while (p < data_end)
 {
  p = memchr(p, str[0], data_end - p);
  if (p == ((void*)0))
   return ((void*)0);
  if (p + strlen > data_end)
   return ((void*)0);
  if (memcmp(p, str, strlen) == 0)
   return p;
  p++;
 }
 return ((void*)0);
}
