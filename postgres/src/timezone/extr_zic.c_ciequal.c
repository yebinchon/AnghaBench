
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lowerit (char const) ;

__attribute__((used)) static bool
ciequal(const char *ap, const char *bp)
{
 while (lowerit(*ap) == lowerit(*bp++))
  if (*ap++ == '\0')
   return 1;
 return 0;
}
