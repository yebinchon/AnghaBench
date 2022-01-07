
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int list_member_oid (int ,scalar_t__) ;
 int roles_is_member_of (scalar_t__) ;

bool
is_member_of_role_nosuper(Oid member, Oid role)
{

 if (member == role)
  return 1;





 return list_member_oid(roles_is_member_of(member), role);
}
