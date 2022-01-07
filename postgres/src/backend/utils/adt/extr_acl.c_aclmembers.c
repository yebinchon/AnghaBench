
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ai_grantee; scalar_t__ ai_grantor; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ AclItem ;
typedef int Acl ;


 TYPE_1__* ACL_DAT (int const*) ;
 scalar_t__ ACL_ID_PUBLIC ;
 int ACL_NUM (int const*) ;
 int check_acl (int const*) ;
 int oid_cmp ;
 scalar_t__* palloc (int) ;
 int qsort (scalar_t__*,int,int,int ) ;
 int qunique (scalar_t__*,int,int,int ) ;

int
aclmembers(const Acl *acl, Oid **roleids)
{
 Oid *list;
 const AclItem *acldat;
 int i,
    j;

 if (acl == ((void*)0) || ACL_NUM(acl) == 0)
 {
  *roleids = ((void*)0);
  return 0;
 }

 check_acl(acl);


 list = palloc(ACL_NUM(acl) * 2 * sizeof(Oid));
 acldat = ACL_DAT(acl);




 j = 0;
 for (i = 0; i < ACL_NUM(acl); i++)
 {
  const AclItem *ai = &acldat[i];

  if (ai->ai_grantee != ACL_ID_PUBLIC)
   list[j++] = ai->ai_grantee;

  if (ai->ai_grantor != ACL_ID_PUBLIC)
   list[j++] = ai->ai_grantor;
 }


 qsort(list, j, sizeof(Oid), oid_cmp);





 *roleids = list;


 return qunique(list, j, sizeof(Oid), oid_cmp);
}
