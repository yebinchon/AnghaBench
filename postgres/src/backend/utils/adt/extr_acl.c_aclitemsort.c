
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AclItem ;
typedef int Acl ;


 int ACL_DAT (int *) ;
 int ACL_NUM (int *) ;
 int aclitemComparator ;
 int qsort (int ,int,int,int ) ;

void
aclitemsort(Acl *acl)
{
 if (acl != ((void*)0) && ACL_NUM(acl) > 1)
  qsort(ACL_DAT(acl), ACL_NUM(acl), sizeof(AclItem), aclitemComparator);
}
