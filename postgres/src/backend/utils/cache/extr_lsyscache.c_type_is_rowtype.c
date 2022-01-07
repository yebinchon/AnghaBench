
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ RECORDOID ;


 scalar_t__ getBaseType (scalar_t__) ;
 int const get_typtype (scalar_t__) ;

bool
type_is_rowtype(Oid typid)
{
 if (typid == RECORDOID)
  return 1;
 switch (get_typtype(typid))
 {
  case 129:
   return 1;
  case 128:
   if (get_typtype(getBaseType(typid)) == 129)
    return 1;
   break;
  default:
   break;
 }
 return 0;
}
