
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GucSource ;


 int LC_MESSAGES ;
 scalar_t__ PGC_S_DEFAULT ;
 int check_locale (int ,char*,int *) ;

bool
check_locale_messages(char **newval, void **extra, GucSource source)
{
 if (**newval == '\0')
 {
  if (source == PGC_S_DEFAULT)
   return 1;
  else
   return 0;
 }
 return 1;

}
