
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rd_createSubid; scalar_t__ rd_newRelfilenodeSubid; } ;
typedef scalar_t__ SubTransactionId ;
typedef TYPE_1__* Relation ;


 scalar_t__ InvalidSubTransactionId ;
 int RelationClearRelation (TYPE_1__*,int) ;
 int RelationGetRelationName (TYPE_1__*) ;
 scalar_t__ RelationHasReferenceCountZero (TYPE_1__*) ;
 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
AtEOSubXact_cleanup(Relation relation, bool isCommit,
     SubTransactionId mySubid, SubTransactionId parentSubid)
{






 if (relation->rd_createSubid == mySubid)
 {
  if (isCommit)
   relation->rd_createSubid = parentSubid;
  else if (RelationHasReferenceCountZero(relation))
  {
   RelationClearRelation(relation, 0);
   return;
  }
  else
  {







   relation->rd_createSubid = parentSubid;
   elog(WARNING, "cannot remove relcache entry for \"%s\" because it has nonzero refcount",
     RelationGetRelationName(relation));
  }
 }




 if (relation->rd_newRelfilenodeSubid == mySubid)
 {
  if (isCommit)
   relation->rd_newRelfilenodeSubid = parentSubid;
  else
   relation->rd_newRelfilenodeSubid = InvalidSubTransactionId;
 }
}
