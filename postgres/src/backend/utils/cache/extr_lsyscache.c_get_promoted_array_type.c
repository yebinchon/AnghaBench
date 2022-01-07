
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int get_array_type (int ) ;
 int get_element_type (int ) ;

Oid
get_promoted_array_type(Oid typid)
{
 Oid array_type = get_array_type(typid);

 if (OidIsValid(array_type))
  return array_type;
 if (OidIsValid(get_element_type(typid)))
  return typid;
 return InvalidOid;
}
