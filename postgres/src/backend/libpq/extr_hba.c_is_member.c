
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int OidIsValid (int ) ;
 int get_role_oid (char const*,int) ;
 int is_member_of_role_nosuper (int ,int ) ;

__attribute__((used)) static bool
is_member(Oid userid, const char *role)
{
 Oid roleid;

 if (!OidIsValid(userid))
  return 0;

 roleid = get_role_oid(role, 1);

 if (!OidIsValid(roleid))
  return 0;






 return is_member_of_role_nosuper(userid, roleid);
}
