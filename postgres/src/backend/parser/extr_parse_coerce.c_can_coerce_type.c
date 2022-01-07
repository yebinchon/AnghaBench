
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef scalar_t__ CoercionPathType ;
typedef int CoercionContext ;


 scalar_t__ ANYOID ;
 scalar_t__ COERCION_PATH_NONE ;
 scalar_t__ ISCOMPLEX (scalar_t__) ;
 scalar_t__ IsPolymorphicType (scalar_t__) ;
 scalar_t__ RECORDARRAYOID ;
 scalar_t__ RECORDOID ;
 scalar_t__ UNKNOWNOID ;
 int check_generic_type_consistency (scalar_t__ const*,scalar_t__ const*,int) ;
 scalar_t__ find_coercion_pathway (scalar_t__,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ is_complex_array (scalar_t__) ;
 scalar_t__ typeInheritsFrom (scalar_t__,scalar_t__) ;
 scalar_t__ typeIsOfTypedTable (scalar_t__,scalar_t__) ;

bool
can_coerce_type(int nargs, const Oid *input_typeids, const Oid *target_typeids,
    CoercionContext ccontext)
{
 bool have_generics = 0;
 int i;


 for (i = 0; i < nargs; i++)
 {
  Oid inputTypeId = input_typeids[i];
  Oid targetTypeId = target_typeids[i];
  CoercionPathType pathtype;
  Oid funcId;


  if (inputTypeId == targetTypeId)
   continue;


  if (targetTypeId == ANYOID)
   continue;


  if (IsPolymorphicType(targetTypeId))
  {
   have_generics = 1;
   continue;
  }





  if (inputTypeId == UNKNOWNOID)
   continue;





  pathtype = find_coercion_pathway(targetTypeId, inputTypeId, ccontext,
           &funcId);
  if (pathtype != COERCION_PATH_NONE)
   continue;





  if (inputTypeId == RECORDOID &&
   ISCOMPLEX(targetTypeId))
   continue;




  if (targetTypeId == RECORDOID &&
   ISCOMPLEX(inputTypeId))
   continue;
  if (targetTypeId == RECORDARRAYOID &&
   is_complex_array(inputTypeId))
   continue;




  if (typeInheritsFrom(inputTypeId, targetTypeId)
   || typeIsOfTypedTable(inputTypeId, targetTypeId))
   continue;




  return 0;
 }


 if (have_generics)
 {
  if (!check_generic_type_consistency(input_typeids, target_typeids,
           nargs))
   return 0;
 }

 return 1;
}
