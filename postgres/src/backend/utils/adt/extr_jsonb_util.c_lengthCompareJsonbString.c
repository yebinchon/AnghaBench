
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static int
lengthCompareJsonbString(const char *val1, int len1, const char *val2, int len2)
{
 if (len1 == len2)
  return memcmp(val1, val2, len1);
 else
  return len1 > len2 ? 1 : -1;
}
