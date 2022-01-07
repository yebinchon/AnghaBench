
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int componentcheck (char const*,char const*,char const*) ;
 scalar_t__ noise ;
 scalar_t__ strchr (char const*,unsigned char) ;
 int warning (int ,char const*,unsigned char) ;

__attribute__((used)) static bool
namecheck(const char *name)
{
 char const *cp;


 static char const benign[] =
 "-/_"
 "abcdefghijklmnopqrstuvwxyz"
 "ABCDEFGHIJKLMNOPQRSTUVWXYZ";





 static char const printable_and_not_benign[] =
 " !\"#$%&'()*+,.0123456789:;<=>?@[\\]^`{|}~";

 char const *component = name;

 for (cp = name; *cp; cp++)
 {
  unsigned char c = *cp;

  if (noise && !strchr(benign, c))
  {
   warning((strchr(printable_and_not_benign, c)
      ? _("file name '%s' contains byte '%c'")
      : _("file name '%s' contains byte '\\%o'")),
     name, c);
  }
  if (c == '/')
  {
   if (!componentcheck(name, component, cp))
    return 0;
   component = cp + 1;
  }
 }
 return componentcheck(name, component, cp);
}
