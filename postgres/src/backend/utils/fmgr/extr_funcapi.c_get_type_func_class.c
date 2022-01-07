
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeFuncClass ;
typedef int Oid ;


 int CSTRINGOID ;
 int RECORDOID ;
 int TYPEFUNC_COMPOSITE ;
 int TYPEFUNC_COMPOSITE_DOMAIN ;
 int TYPEFUNC_OTHER ;
 int TYPEFUNC_RECORD ;
 int TYPEFUNC_SCALAR ;






 int VOIDOID ;
 int getBaseType (int ) ;
 int const get_typtype (int ) ;

__attribute__((used)) static TypeFuncClass
get_type_func_class(Oid typid, Oid *base_typeid)
{
 *base_typeid = typid;

 switch (get_typtype(typid))
 {
  case 132:
   return TYPEFUNC_COMPOSITE;
  case 133:
  case 130:
  case 128:
   return TYPEFUNC_SCALAR;
  case 131:
   *base_typeid = typid = getBaseType(typid);
   if (get_typtype(typid) == 132)
    return TYPEFUNC_COMPOSITE_DOMAIN;
   else
    return TYPEFUNC_SCALAR;
  case 129:
   if (typid == RECORDOID)
    return TYPEFUNC_RECORD;







   if (typid == VOIDOID || typid == CSTRINGOID)
    return TYPEFUNC_SCALAR;
   return TYPEFUNC_OTHER;
 }

 return TYPEFUNC_OTHER;
}
