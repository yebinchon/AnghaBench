
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ai_grantee; int ai_grantor; } ;
typedef int Oid ;
typedef scalar_t__ AclMode ;
typedef TYPE_1__ const AclItem ;
typedef int const Acl ;


 scalar_t__ ACLITEM_GET_GOPTIONS (TYPE_1__ const) ;
 int ACLMASK_ALL ;
 TYPE_1__ const* ACL_DAT (int const*) ;
 int ACL_GRANT_OPTION_FOR (scalar_t__) ;
 scalar_t__ ACL_ID_PUBLIC ;
 int ACL_MODECHG_DEL ;
 scalar_t__ ACL_NO_RIGHTS ;
 int ACL_NUM (int const*) ;
 scalar_t__ ACL_OPTION_TO_PRIVS (scalar_t__) ;
 int ACL_SIZE (int const*) ;
 int Assert (int) ;
 int DROP_CASCADE ;
 int ERRCODE_INVALID_GRANT_OPERATION ;
 int ERROR ;
 scalar_t__ aclmask (int const*,int ,int ,int ,int ) ;
 int const* aclupdate (int const*,TYPE_1__ const*,int ,int ,int ) ;
 int const* allocacl (int) ;
 int check_acl (int const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memcpy (int const*,int const*,int ) ;
 int pfree (int const*) ;

__attribute__((used)) static void
check_circularity(const Acl *old_acl, const AclItem *mod_aip,
      Oid ownerId)
{
 Acl *acl;
 AclItem *aip;
 int i,
    num;
 AclMode own_privs;

 check_acl(old_acl);





 Assert(mod_aip->ai_grantee != ACL_ID_PUBLIC);


 if (mod_aip->ai_grantor == ownerId)
  return;


 acl = allocacl(ACL_NUM(old_acl));
 memcpy(acl, old_acl, ACL_SIZE(old_acl));


cc_restart:
 num = ACL_NUM(acl);
 aip = ACL_DAT(acl);
 for (i = 0; i < num; i++)
 {
  if (aip[i].ai_grantee == mod_aip->ai_grantee &&
   ACLITEM_GET_GOPTIONS(aip[i]) != ACL_NO_RIGHTS)
  {
   Acl *new_acl;


   new_acl = aclupdate(acl, &aip[i], ACL_MODECHG_DEL,
        ownerId, DROP_CASCADE);

   pfree(acl);
   acl = new_acl;

   goto cc_restart;
  }
 }


 own_privs = aclmask(acl,
      mod_aip->ai_grantor,
      ownerId,
      ACL_GRANT_OPTION_FOR(ACLITEM_GET_GOPTIONS(*mod_aip)),
      ACLMASK_ALL);
 own_privs = ACL_OPTION_TO_PRIVS(own_privs);

 if ((ACLITEM_GET_GOPTIONS(*mod_aip) & ~own_privs) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_GRANT_OPERATION),
     errmsg("grant options cannot be granted back to your own grantor")));

 pfree(acl);
}
