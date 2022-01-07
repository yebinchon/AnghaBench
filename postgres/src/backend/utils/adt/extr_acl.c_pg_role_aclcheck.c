
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int AclResult ;
typedef int AclMode ;


 int ACLCHECK_NO_PRIV ;
 int ACLCHECK_OK ;
 int ACL_CREATE ;
 int ACL_GRANT_OPTION_FOR (int) ;
 int ACL_USAGE ;
 scalar_t__ has_privs_of_role (int ,int ) ;
 scalar_t__ is_admin_of_role (int ,int ) ;
 scalar_t__ is_member_of_role (int ,int ) ;

__attribute__((used)) static AclResult
pg_role_aclcheck(Oid role_oid, Oid roleid, AclMode mode)
{
 if (mode & ACL_GRANT_OPTION_FOR(ACL_CREATE))
 {





  if (is_admin_of_role(roleid, role_oid))
   return ACLCHECK_OK;
 }
 if (mode & ACL_CREATE)
 {
  if (is_member_of_role(roleid, role_oid))
   return ACLCHECK_OK;
 }
 if (mode & ACL_USAGE)
 {
  if (has_privs_of_role(roleid, role_oid))
   return ACLCHECK_OK;
 }
 return ACLCHECK_NO_PRIV;
}
