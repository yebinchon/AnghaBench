
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int IndexAMProperty ;




bool
btproperty(Oid index_oid, int attno,
     IndexAMProperty prop, const char *propname,
     bool *res, bool *isnull)
{
 switch (prop)
 {
  case 128:

   if (attno == 0)
    return 0;

   *res = 1;
   return 1;

  default:
   return 0;
 }
}
