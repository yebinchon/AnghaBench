
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int OidIsValid (int ) ;
 int get_typcollation (int ) ;

bool
type_is_collatable(Oid typid)
{
 return OidIsValid(get_typcollation(typid));
}
