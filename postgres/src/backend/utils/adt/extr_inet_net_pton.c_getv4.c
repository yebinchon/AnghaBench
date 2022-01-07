
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int getbits (char const*,int*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
getv4(const char *src, u_char *dst, int *bitsp)
{
 static const char digits[] = "0123456789";
 u_char *odst = dst;
 int n;
 u_int val;
 char ch;

 val = 0;
 n = 0;
 while ((ch = *src++) != '\0')
 {
  const char *pch;

  pch = strchr(digits, ch);
  if (pch != ((void*)0))
  {
   if (n++ != 0 && val == 0)
    return 0;
   val *= 10;
   val += (pch - digits);
   if (val > 255)
    return 0;
   continue;
  }
  if (ch == '.' || ch == '/')
  {
   if (dst - odst > 3)
    return 0;
   *dst++ = val;
   if (ch == '/')
    return getbits(src, bitsp);
   val = 0;
   n = 0;
   continue;
  }
  return 0;
 }
 if (n == 0)
  return 0;
 if (dst - odst > 3)
  return 0;
 *dst++ = val;
 return 1;
}
