
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ castmethod; scalar_t__ castcontext; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_cast ;


 scalar_t__ ANYARRAYOID ;
 scalar_t__ ANYELEMENTOID ;
 scalar_t__ ANYENUMOID ;
 scalar_t__ ANYNONARRAYOID ;
 scalar_t__ ANYOID ;
 scalar_t__ ANYRANGEOID ;
 int CASTSOURCETARGET ;
 scalar_t__ COERCION_CODE_IMPLICIT ;
 scalar_t__ COERCION_METHOD_BINARY ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ ISCOMPLEX (scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RECORDARRAYOID ;
 scalar_t__ RECORDOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 scalar_t__ getBaseType (scalar_t__) ;
 scalar_t__ is_complex_array (scalar_t__) ;
 scalar_t__ type_is_array (scalar_t__) ;
 scalar_t__ type_is_enum (scalar_t__) ;
 scalar_t__ type_is_range (scalar_t__) ;

bool
IsBinaryCoercible(Oid srctype, Oid targettype)
{
 HeapTuple tuple;
 Form_pg_cast castForm;
 bool result;


 if (srctype == targettype)
  return 1;


 if (targettype == ANYOID || targettype == ANYELEMENTOID)
  return 1;


 if (OidIsValid(srctype))
  srctype = getBaseType(srctype);


 if (srctype == targettype)
  return 1;


 if (targettype == ANYARRAYOID)
  if (type_is_array(srctype))
   return 1;


 if (targettype == ANYNONARRAYOID)
  if (!type_is_array(srctype))
   return 1;


 if (targettype == ANYENUMOID)
  if (type_is_enum(srctype))
   return 1;


 if (targettype == ANYRANGEOID)
  if (type_is_range(srctype))
   return 1;


 if (targettype == RECORDOID)
  if (ISCOMPLEX(srctype))
   return 1;


 if (targettype == RECORDARRAYOID)
  if (is_complex_array(srctype))
   return 1;


 tuple = SearchSysCache2(CASTSOURCETARGET,
       ObjectIdGetDatum(srctype),
       ObjectIdGetDatum(targettype));
 if (!HeapTupleIsValid(tuple))
  return 0;
 castForm = (Form_pg_cast) GETSTRUCT(tuple);

 result = (castForm->castmethod == COERCION_METHOD_BINARY &&
     castForm->castcontext == COERCION_CODE_IMPLICIT);

 ReleaseSysCache(tuple);

 return result;
}
