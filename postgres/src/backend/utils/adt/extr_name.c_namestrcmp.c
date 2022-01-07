
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Name ;


 int NAMEDATALEN ;
 int NameStr (int ) ;
 int strncmp (int ,char const*,int ) ;

int
namestrcmp(Name name, const char *str)
{
 if (!name && !str)
  return 0;
 if (!name)
  return -1;
 if (!str)
  return 1;
 return strncmp(NameStr(*name), str, NAMEDATALEN);
}
