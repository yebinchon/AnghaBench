
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Min (int,int) ;
 int memcmp (char const*,char const*,int ) ;

__attribute__((used)) static int
binaryCompareStrings(const char *s1, int len1,
      const char *s2, int len2)
{
 int cmp;

 cmp = memcmp(s1, s2, Min(len1, len2));

 if (cmp != 0)
  return cmp;

 if (len1 == len2)
  return 0;

 return len1 < len2 ? -1 : 1;
}
