
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LDAPControl ;


 int efree (int **) ;
 int ldap_control_free (int *) ;

__attribute__((used)) static void _php_ldap_controls_free (LDAPControl*** ctrls)
{
 LDAPControl **ctrlp;

 if (*ctrls) {
  ctrlp = *ctrls;
  while (*ctrlp) {
   ldap_control_free(*ctrlp);
   ctrlp++;
  }
  efree(*ctrls);
  *ctrls = ((void*)0);
 }
}
