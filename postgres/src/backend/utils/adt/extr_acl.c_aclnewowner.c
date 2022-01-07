
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ai_grantor; scalar_t__ ai_grantee; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ AclItem ;
typedef int const Acl ;


 int ACLITEM_GET_RIGHTS (TYPE_1__) ;
 int ACLITEM_SET_RIGHTS (TYPE_1__,int) ;
 TYPE_1__* ACL_DAT (int const*) ;
 int ACL_NO_RIGHTS ;
 int ACL_NUM (int const*) ;
 int ACL_N_SIZE (int) ;
 int* ARR_DIMS (int const*) ;
 int SET_VARSIZE (int const*,int ) ;
 scalar_t__ aclitem_match (TYPE_1__*,TYPE_1__*) ;
 int const* allocacl (int) ;
 int check_acl (int const*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

Acl *
aclnewowner(const Acl *old_acl, Oid oldOwnerId, Oid newOwnerId)
{
 Acl *new_acl;
 AclItem *new_aip;
 AclItem *old_aip;
 AclItem *dst_aip;
 AclItem *src_aip;
 AclItem *targ_aip;
 bool newpresent = 0;
 int dst,
    src,
    targ,
    num;

 check_acl(old_acl);






 num = ACL_NUM(old_acl);
 old_aip = ACL_DAT(old_acl);
 new_acl = allocacl(num);
 new_aip = ACL_DAT(new_acl);
 memcpy(new_aip, old_aip, num * sizeof(AclItem));
 for (dst = 0, dst_aip = new_aip; dst < num; dst++, dst_aip++)
 {
  if (dst_aip->ai_grantor == oldOwnerId)
   dst_aip->ai_grantor = newOwnerId;
  else if (dst_aip->ai_grantor == newOwnerId)
   newpresent = 1;
  if (dst_aip->ai_grantee == oldOwnerId)
   dst_aip->ai_grantee = newOwnerId;
  else if (dst_aip->ai_grantee == newOwnerId)
   newpresent = 1;
 }
 if (newpresent)
 {
  dst = 0;
  for (targ = 0, targ_aip = new_aip; targ < num; targ++, targ_aip++)
  {

   if (ACLITEM_GET_RIGHTS(*targ_aip) == ACL_NO_RIGHTS)
    continue;

   for (src = targ + 1, src_aip = targ_aip + 1; src < num;
     src++, src_aip++)
   {
    if (ACLITEM_GET_RIGHTS(*src_aip) == ACL_NO_RIGHTS)
     continue;
    if (aclitem_match(targ_aip, src_aip))
    {
     ACLITEM_SET_RIGHTS(*targ_aip,
            ACLITEM_GET_RIGHTS(*targ_aip) |
            ACLITEM_GET_RIGHTS(*src_aip));

     ACLITEM_SET_RIGHTS(*src_aip, ACL_NO_RIGHTS);
    }
   }

   new_aip[dst] = *targ_aip;
   dst++;
  }

  ARR_DIMS(new_acl)[0] = dst;
  SET_VARSIZE(new_acl, ACL_N_SIZE(dst));
 }

 return new_acl;
}
