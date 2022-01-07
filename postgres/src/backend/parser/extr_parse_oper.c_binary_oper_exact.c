
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;


 scalar_t__ InvalidOid ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ OpernameGetOprid (int *,scalar_t__,scalar_t__) ;
 scalar_t__ UNKNOWNOID ;
 scalar_t__ getBaseType (scalar_t__) ;

__attribute__((used)) static Oid
binary_oper_exact(List *opname, Oid arg1, Oid arg2)
{
 Oid result;
 bool was_unknown = 0;


 if ((arg1 == UNKNOWNOID) && (arg2 != InvalidOid))
 {
  arg1 = arg2;
  was_unknown = 1;
 }
 else if ((arg2 == UNKNOWNOID) && (arg1 != InvalidOid))
 {
  arg2 = arg1;
  was_unknown = 1;
 }

 result = OpernameGetOprid(opname, arg1, arg2);
 if (OidIsValid(result))
  return result;

 if (was_unknown)
 {

  Oid basetype = getBaseType(arg1);

  if (basetype != arg1)
  {
   result = OpernameGetOprid(opname, basetype, basetype);
   if (OidIsValid(result))
    return result;
  }
 }

 return InvalidOid;
}
