
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AclItem ;
typedef int const Acl ;


 scalar_t__ ACL_DAT (int const*) ;
 int ACL_NUM (int const*) ;
 int const* allocacl (int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

Acl *
aclconcat(const Acl *left_acl, const Acl *right_acl)
{
 Acl *result_acl;

 result_acl = allocacl(ACL_NUM(left_acl) + ACL_NUM(right_acl));

 memcpy(ACL_DAT(result_acl),
     ACL_DAT(left_acl),
     ACL_NUM(left_acl) * sizeof(AclItem));

 memcpy(ACL_DAT(result_acl) + ACL_NUM(left_acl),
     ACL_DAT(right_acl),
     ACL_NUM(right_acl) * sizeof(AclItem));

 return result_acl;
}
