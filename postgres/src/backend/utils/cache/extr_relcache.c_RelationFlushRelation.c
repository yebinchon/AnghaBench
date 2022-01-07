
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rd_createSubid; scalar_t__ rd_newRelfilenodeSubid; } ;
typedef TYPE_1__* Relation ;


 scalar_t__ InvalidSubTransactionId ;
 int RelationClearRelation (TYPE_1__*,int) ;
 int RelationDecrementReferenceCount (TYPE_1__*) ;
 int RelationHasReferenceCountZero (TYPE_1__*) ;
 int RelationIncrementReferenceCount (TYPE_1__*) ;

__attribute__((used)) static void
RelationFlushRelation(Relation relation)
{
 if (relation->rd_createSubid != InvalidSubTransactionId ||
  relation->rd_newRelfilenodeSubid != InvalidSubTransactionId)
 {
  RelationIncrementReferenceCount(relation);
  RelationClearRelation(relation, 1);
  RelationDecrementReferenceCount(relation);
 }
 else
 {



  bool rebuild = !RelationHasReferenceCountZero(relation);

  RelationClearRelation(relation, rebuild);
 }
}
