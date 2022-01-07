
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_refcnt; } ;
typedef TYPE_1__* Relation ;


 int CurrentResourceOwner ;
 int IsBootstrapProcessingMode () ;
 int ResourceOwnerEnlargeRelationRefs (int ) ;
 int ResourceOwnerRememberRelationRef (int ,TYPE_1__*) ;

void
RelationIncrementReferenceCount(Relation rel)
{
 ResourceOwnerEnlargeRelationRefs(CurrentResourceOwner);
 rel->rd_refcnt += 1;
 if (!IsBootstrapProcessingMode())
  ResourceOwnerRememberRelationRef(CurrentResourceOwner, rel);
}
