
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ TYPTYPE_RANGE ;
 scalar_t__ get_typtype (int ) ;

bool
type_is_range(Oid typid)
{
 return (get_typtype(typid) == TYPTYPE_RANGE);
}
