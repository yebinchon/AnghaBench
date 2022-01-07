
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ ANYARRAYOID ;
 scalar_t__ ANYELEMENTOID ;
 scalar_t__ ANYENUMOID ;
 scalar_t__ ANYNONARRAYOID ;
 scalar_t__ ANYRANGEOID ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int OidIsValid (scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,...) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ getBaseType (scalar_t__) ;
 scalar_t__ get_array_type (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;
 scalar_t__ get_range_subtype (scalar_t__) ;

Oid
resolve_generic_type(Oid declared_type,
      Oid context_actual_type,
      Oid context_declared_type)
{
 if (declared_type == ANYARRAYOID)
 {
  if (context_declared_type == ANYARRAYOID)
  {




   Oid context_base_type = getBaseType(context_actual_type);
   Oid array_typelem = get_element_type(context_base_type);

   if (!OidIsValid(array_typelem))
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("argument declared %s is not an array but type %s",
        "anyarray", format_type_be(context_base_type))));
   return context_base_type;
  }
  else if (context_declared_type == ANYELEMENTOID ||
     context_declared_type == ANYNONARRAYOID ||
     context_declared_type == ANYENUMOID ||
     context_declared_type == ANYRANGEOID)
  {

   Oid array_typeid = get_array_type(context_actual_type);

   if (!OidIsValid(array_typeid))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("could not find array type for data type %s",
        format_type_be(context_actual_type))));
   return array_typeid;
  }
 }
 else if (declared_type == ANYELEMENTOID ||
    declared_type == ANYNONARRAYOID ||
    declared_type == ANYENUMOID ||
    declared_type == ANYRANGEOID)
 {
  if (context_declared_type == ANYARRAYOID)
  {

   Oid context_base_type = getBaseType(context_actual_type);
   Oid array_typelem = get_element_type(context_base_type);

   if (!OidIsValid(array_typelem))
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("argument declared %s is not an array but type %s",
        "anyarray", format_type_be(context_base_type))));
   return array_typelem;
  }
  else if (context_declared_type == ANYRANGEOID)
  {

   Oid context_base_type = getBaseType(context_actual_type);
   Oid range_typelem = get_range_subtype(context_base_type);

   if (!OidIsValid(range_typelem))
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("argument declared %s is not a range type but type %s",
        "anyrange", format_type_be(context_base_type))));
   return range_typelem;
  }
  else if (context_declared_type == ANYELEMENTOID ||
     context_declared_type == ANYNONARRAYOID ||
     context_declared_type == ANYENUMOID)
  {

   return context_actual_type;
  }
 }
 else
 {

  return declared_type;
 }


 elog(ERROR, "could not determine polymorphic type because context isn't polymorphic");
 return InvalidOid;
}
