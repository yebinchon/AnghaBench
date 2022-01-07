
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
getbits(const char *src, int *bitsp)
{
 static const char digits[] = "0123456789";
 int n;
 int val;
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
   if (val > 128)
    return 0;
   continue;
  }
  return 0;
 }
 if (n == 0)
  return 0;
 *bitsp = val;
 return 1;
}
