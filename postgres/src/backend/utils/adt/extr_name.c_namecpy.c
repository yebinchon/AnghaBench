
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NameData ;
typedef int const* Name ;


 int NAMEDATALEN ;
 int NameStr (int const) ;
 int StrNCpy (int ,int ,int ) ;

int
namecpy(Name n1, const NameData *n2)
{
 if (!n1 || !n2)
  return -1;
 StrNCpy(NameStr(*n1), NameStr(*n2), NAMEDATALEN);
 return 0;
}
