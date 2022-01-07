
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
 int ACL_NUM (int const*) ;
 int ERROR ;
 int check_acl (int const*) ;
 int elog (int ,char*) ;

__attribute__((used)) static AclMode
aclmask_direct(const Acl *acl, Oid roleid, Oid ownerId,
      AclMode mask, AclMaskHow how)
{
 AclMode result;
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
  roleid == ownerId)
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

  if (aidata->ai_grantee == roleid)
  {
   result |= aidata->ai_privs & mask;
   if ((how == ACLMASK_ALL) ? (result == mask) : (result != 0))
    return result;
  }
 }

 return result;
}
