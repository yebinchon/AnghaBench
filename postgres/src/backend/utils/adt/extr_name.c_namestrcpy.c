
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Name ;


 int NAMEDATALEN ;
 int NameStr (int ) ;
 int StrNCpy (int ,char const*,int ) ;

int
namestrcpy(Name name, const char *str)
{
 if (!name || !str)
  return -1;
 StrNCpy(NameStr(*name), str, NAMEDATALEN);
 return 0;
}
