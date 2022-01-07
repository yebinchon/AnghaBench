
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ ISCOMPLEX (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int get_element_type (int ) ;

__attribute__((used)) static bool
is_complex_array(Oid typid)
{
 Oid elemtype = get_element_type(typid);

 return (OidIsValid(elemtype) && ISCOMPLEX(elemtype));
}
