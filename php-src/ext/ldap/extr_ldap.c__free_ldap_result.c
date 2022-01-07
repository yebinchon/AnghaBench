
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int LDAPMessage ;


 int ldap_msgfree (int *) ;

__attribute__((used)) static void _free_ldap_result(zend_resource *rsrc)
{
 LDAPMessage *result = (LDAPMessage *)rsrc->ptr;
 ldap_msgfree(result);
}
