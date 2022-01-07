
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ndim; int elemtype; scalar_t__ dataoffset; } ;
typedef int Size ;
typedef TYPE_1__ Acl ;


 int ACLITEMOID ;
 int ACL_N_SIZE (int) ;
 int* ARR_DIMS (TYPE_1__*) ;
 int* ARR_LBOUND (TYPE_1__*) ;
 int ERROR ;
 int SET_VARSIZE (TYPE_1__*,int ) ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc0 (int ) ;

__attribute__((used)) static Acl *
allocacl(int n)
{
 Acl *new_acl;
 Size size;

 if (n < 0)
  elog(ERROR, "invalid size: %d", n);
 size = ACL_N_SIZE(n);
 new_acl = (Acl *) palloc0(size);
 SET_VARSIZE(new_acl, size);
 new_acl->ndim = 1;
 new_acl->dataoffset = 0;
 new_acl->elemtype = ACLITEMOID;
 ARR_LBOUND(new_acl)[0] = 1;
 ARR_DIMS(new_acl)[0] = n;
 return new_acl;
}
