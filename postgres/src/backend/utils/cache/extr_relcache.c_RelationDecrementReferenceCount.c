
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rd_refcnt; } ;
typedef TYPE_1__* Relation ;


 int Assert (int) ;
 int CurrentResourceOwner ;
 int IsBootstrapProcessingMode () ;
 int ResourceOwnerForgetRelationRef (int ,TYPE_1__*) ;

void
RelationDecrementReferenceCount(Relation rel)
{
 Assert(rel->rd_refcnt > 0);
 rel->rd_refcnt -= 1;
 if (!IsBootstrapProcessingMode())
  ResourceOwnerForgetRelationRef(CurrentResourceOwner, rel);
}
