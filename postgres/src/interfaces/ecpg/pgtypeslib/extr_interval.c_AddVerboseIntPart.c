
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int sprintf (char*,char*,int,char const*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
AddVerboseIntPart(char *cp, int value, const char *units,
      bool *is_zero, bool *is_before)
{
 if (value == 0)
  return cp;

 if (*is_zero)
 {
  *is_before = (value < 0);
  value = abs(value);
 }
 else if (*is_before)
  value = -value;
 sprintf(cp, " %d %s%s", value, units, (value == 1) ? "" : "s");
 *is_zero = 0;
 return cp + strlen(cp);
}
