
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int AclItem ;
typedef int Acl ;


 int * ACL_DAT (int const*) ;
 int ACL_MODECHG_ADD ;
 int ACL_NUM (int const*) ;
 int DROP_RESTRICT ;
 int * aclcopy (int const*) ;
 int * aclupdate (int *,int *,int ,int ,int ) ;
 int pfree (int *) ;

Acl *
aclmerge(const Acl *left_acl, const Acl *right_acl, Oid ownerId)
{
 Acl *result_acl;
 AclItem *aip;
 int i,
    num;


 if (left_acl == ((void*)0) || ACL_NUM(left_acl) == 0)
 {
  if (right_acl == ((void*)0) || ACL_NUM(right_acl) == 0)
   return ((void*)0);
  else
   return aclcopy(right_acl);
 }
 else
 {
  if (right_acl == ((void*)0) || ACL_NUM(right_acl) == 0)
   return aclcopy(left_acl);
 }


 result_acl = aclcopy(left_acl);

 aip = ACL_DAT(right_acl);
 num = ACL_NUM(right_acl);

 for (i = 0; i < num; i++, aip++)
 {
  Acl *tmp_acl;

  tmp_acl = aclupdate(result_acl, aip, ACL_MODECHG_ADD,
       ownerId, DROP_RESTRICT);
  pfree(result_acl);
  result_acl = tmp_acl;
 }

 return result_acl;
}
