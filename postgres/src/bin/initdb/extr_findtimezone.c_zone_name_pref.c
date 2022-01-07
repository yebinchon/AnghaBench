
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
zone_name_pref(const char *zonename)
{




 if (strcmp(zonename, "UTC") == 0)
  return 50;
 if (strcmp(zonename, "Etc/UTC") == 0)
  return 40;





 if (strcmp(zonename, "localtime") == 0 ||
  strcmp(zonename, "posixrules") == 0)
  return -50;

 return 0;
}
