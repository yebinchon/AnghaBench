
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int ldctl_oid; } ;
typedef TYPE_1__ LDAPControl ;
typedef int LDAP ;


 int _php_ldap_control_to_array (int *,TYPE_1__*,int *,int) ;
 int add_assoc_zval (int *,int ,int *) ;
 int ldap_controls_free (TYPE_1__**) ;
 int * zend_try_array_init (int *) ;

__attribute__((used)) static void _php_ldap_controls_to_array(LDAP *ld, LDAPControl** ctrls, zval* array, int request)
{
 zval tmp1;
 LDAPControl **ctrlp;

 array = zend_try_array_init(array);
 if (!array) {
  return;
 }

 if (ctrls == ((void*)0)) {
  return;
 }
 ctrlp = ctrls;
 while (*ctrlp != ((void*)0)) {
  _php_ldap_control_to_array(ld, *ctrlp, &tmp1, request);
  add_assoc_zval(array, (*ctrlp)->ldctl_oid, &tmp1);
  ctrlp++;
 }
 ldap_controls_free(ctrls);
}
