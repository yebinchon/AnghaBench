
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int,char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
AddISO8601IntPart(char *cp, int value, char units)
{
 if (value == 0)
  return cp;
 sprintf(cp, "%d%c", value, units);
 return cp + strlen(cp);
}
