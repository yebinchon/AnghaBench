
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ai_grantee; int ai_privs; } ;
typedef scalar_t__ Oid ;
typedef int AclMode ;
typedef scalar_t__ AclMaskHow ;
typedef TYPE_1__ AclItem ;
typedef int Acl ;


 int ACLITEM_ALL_GOPTION_BITS ;
 scalar_t__ ACLMASK_ALL ;
 TYPE_1__* ACL_DAT (int const*) ;
 scalar_t__ ACL_ID_PUBLIC ;
 int ACL_NUM (int const*) ;
 int ERROR ;
 int check_acl (int const*) ;
 int elog (int ,char*) ;
 scalar_t__ has_privs_of_role (scalar_t__,scalar_t__) ;

AclMode
aclmask(const Acl *acl, Oid roleid, Oid ownerId,
  AclMode mask, AclMaskHow how)
{
 AclMode result;
 AclMode remaining;
 AclItem *aidat;
 int i,
    num;





 if (acl == ((void*)0))
  elog(ERROR, "null ACL");

 check_acl(acl);


 if (mask == 0)
  return 0;

 result = 0;


 if ((mask & ACLITEM_ALL_GOPTION_BITS) &&
  has_privs_of_role(roleid, ownerId))
 {
  result = mask & ACLITEM_ALL_GOPTION_BITS;
  if ((how == ACLMASK_ALL) ? (result == mask) : (result != 0))
   return result;
 }

 num = ACL_NUM(acl);
 aidat = ACL_DAT(acl);




 for (i = 0; i < num; i++)
 {
  AclItem *aidata = &aidat[i];

  if (aidata->ai_grantee == ACL_ID_PUBLIC ||
   aidata->ai_grantee == roleid)
  {
   result |= aidata->ai_privs & mask;
   if ((how == ACLMASK_ALL) ? (result == mask) : (result != 0))
    return result;
  }
 }
 remaining = mask & ~result;
 for (i = 0; i < num; i++)
 {
  AclItem *aidata = &aidat[i];

  if (aidata->ai_grantee == ACL_ID_PUBLIC ||
   aidata->ai_grantee == roleid)
   continue;

  if ((aidata->ai_privs & remaining) &&
   has_privs_of_role(roleid, aidata->ai_grantee))
  {
   result |= aidata->ai_privs & mask;
   if ((how == ACLMASK_ALL) ? (result == mask) : (result != 0))
    return result;
   remaining = mask & ~result;
  }
 }

 return result;
}
