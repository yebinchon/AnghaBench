
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int AclResult ;


 int OBJECT_TYPE ;
 int aclcheck_error (int ,int ,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;

void
aclcheck_error_type(AclResult aclerr, Oid typeOid)
{
 Oid element_type = get_element_type(typeOid);

 aclcheck_error(aclerr, OBJECT_TYPE, format_type_be(element_type ? element_type : typeOid));
}
