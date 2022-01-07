
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AclItem ;
typedef int Acl ;


 int ACL_DAT (int const*) ;
 int ACL_NUM (int const*) ;
 scalar_t__ memcmp (int ,int ,int) ;

bool
aclequal(const Acl *left_acl, const Acl *right_acl)
{

 if (left_acl == ((void*)0) || ACL_NUM(left_acl) == 0)
 {
  if (right_acl == ((void*)0) || ACL_NUM(right_acl) == 0)
   return 1;
  else
   return 0;
 }
 else
 {
  if (right_acl == ((void*)0) || ACL_NUM(right_acl) == 0)
   return 0;
 }

 if (ACL_NUM(left_acl) != ACL_NUM(right_acl))
  return 0;

 if (memcmp(ACL_DAT(left_acl),
      ACL_DAT(right_acl),
      ACL_NUM(left_acl) * sizeof(AclItem)) == 0)
  return 1;

 return 0;
}
