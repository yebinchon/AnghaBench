
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
 scalar_t__ InvalidOid ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ UNKNOWNOID ;
 scalar_t__ getBaseType (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;
 scalar_t__ get_range_subtype (scalar_t__) ;
 scalar_t__ type_is_array_domain (scalar_t__) ;
 int type_is_enum (scalar_t__) ;

bool
check_generic_type_consistency(const Oid *actual_arg_types,
          const Oid *declared_arg_types,
          int nargs)
{
 int j;
 Oid elem_typeid = InvalidOid;
 Oid array_typeid = InvalidOid;
 Oid array_typelem;
 Oid range_typeid = InvalidOid;
 Oid range_typelem;
 bool have_anyelement = 0;
 bool have_anynonarray = 0;
 bool have_anyenum = 0;





 for (j = 0; j < nargs; j++)
 {
  Oid decl_type = declared_arg_types[j];
  Oid actual_type = actual_arg_types[j];

  if (decl_type == ANYELEMENTOID ||
   decl_type == ANYNONARRAYOID ||
   decl_type == ANYENUMOID)
  {
   have_anyelement = 1;
   if (decl_type == ANYNONARRAYOID)
    have_anynonarray = 1;
   else if (decl_type == ANYENUMOID)
    have_anyenum = 1;
   if (actual_type == UNKNOWNOID)
    continue;
   if (OidIsValid(elem_typeid) && actual_type != elem_typeid)
    return 0;
   elem_typeid = actual_type;
  }
  else if (decl_type == ANYARRAYOID)
  {
   if (actual_type == UNKNOWNOID)
    continue;
   actual_type = getBaseType(actual_type);
   if (OidIsValid(array_typeid) && actual_type != array_typeid)
    return 0;
   array_typeid = actual_type;
  }
  else if (decl_type == ANYRANGEOID)
  {
   if (actual_type == UNKNOWNOID)
    continue;
   actual_type = getBaseType(actual_type);
   if (OidIsValid(range_typeid) && actual_type != range_typeid)
    return 0;
   range_typeid = actual_type;
  }
 }


 if (OidIsValid(array_typeid))
 {
  if (array_typeid == ANYARRAYOID)
  {

   if (have_anyelement)
    return 0;
   return 1;
  }

  array_typelem = get_element_type(array_typeid);
  if (!OidIsValid(array_typelem))
   return 0;

  if (!OidIsValid(elem_typeid))
  {



   elem_typeid = array_typelem;
  }
  else if (array_typelem != elem_typeid)
  {

   return 0;
  }
 }


 if (OidIsValid(range_typeid))
 {
  range_typelem = get_range_subtype(range_typeid);
  if (!OidIsValid(range_typelem))
   return 0;

  if (!OidIsValid(elem_typeid))
  {



   elem_typeid = range_typelem;
  }
  else if (range_typelem != elem_typeid)
  {

   return 0;
  }
 }

 if (have_anynonarray)
 {

  if (type_is_array_domain(elem_typeid))
   return 0;
 }

 if (have_anyenum)
 {

  if (!type_is_enum(elem_typeid))
   return 0;
 }


 return 1;
}
