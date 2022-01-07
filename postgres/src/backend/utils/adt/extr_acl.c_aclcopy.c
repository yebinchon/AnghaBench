
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AclItem ;
typedef int const Acl ;


 int ACL_DAT (int const*) ;
 int ACL_NUM (int const*) ;
 int const* allocacl (int) ;
 int memcpy (int ,int ,int) ;

Acl *
aclcopy(const Acl *orig_acl)
{
 Acl *result_acl;

 result_acl = allocacl(ACL_NUM(orig_acl));

 memcpy(ACL_DAT(result_acl),
     ACL_DAT(orig_acl),
     ACL_NUM(orig_acl) * sizeof(AclItem));

 return result_acl;
}
