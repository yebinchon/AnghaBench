
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rd_refcnt; scalar_t__ rd_createSubid; scalar_t__ rd_newRelfilenodeSubid; scalar_t__ rd_isnailed; } ;
typedef TYPE_1__* Relation ;


 int Assert (int) ;
 scalar_t__ InvalidSubTransactionId ;
 int IsBootstrapProcessingMode () ;
 int RelationClearRelation (TYPE_1__*,int) ;
 int RelationGetRelationName (TYPE_1__*) ;
 scalar_t__ RelationHasReferenceCountZero (TYPE_1__*) ;
 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
AtEOXact_cleanup(Relation relation, bool isCommit)
{
 if (relation->rd_createSubid != InvalidSubTransactionId)
 {
  if (isCommit)
   relation->rd_createSubid = InvalidSubTransactionId;
  else if (RelationHasReferenceCountZero(relation))
  {
   RelationClearRelation(relation, 0);
   return;
  }
  else
  {
   relation->rd_createSubid = InvalidSubTransactionId;
   elog(WARNING, "cannot remove relcache entry for \"%s\" because it has nonzero refcount",
     RelationGetRelationName(relation));
  }
 }




 relation->rd_newRelfilenodeSubid = InvalidSubTransactionId;
}
