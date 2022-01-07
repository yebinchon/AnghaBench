
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rd_createSubid; scalar_t__ rd_newRelfilenodeSubid; } ;
typedef TYPE_1__* Relation ;


 scalar_t__ InvalidSubTransactionId ;
 int RelationClearRelation (TYPE_1__*,int) ;
 int RelationDecrementReferenceCount (TYPE_1__*) ;
 scalar_t__ RelationHasReferenceCountZero (TYPE_1__*) ;

void
RelationClose(Relation relation)
{

 RelationDecrementReferenceCount(relation);







}
