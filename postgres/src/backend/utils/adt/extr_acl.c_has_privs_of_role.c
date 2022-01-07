
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int list_member_oid (int ,scalar_t__) ;
 int roles_has_privs_of (scalar_t__) ;
 scalar_t__ superuser_arg (scalar_t__) ;

bool
has_privs_of_role(Oid member, Oid role)
{

 if (member == role)
  return 1;


 if (superuser_arg(member))
  return 1;





 return list_member_oid(roles_has_privs_of(member), role);
}
