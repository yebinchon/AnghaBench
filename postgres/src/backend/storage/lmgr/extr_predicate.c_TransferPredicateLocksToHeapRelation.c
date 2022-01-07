
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int DropAllPredicateLocksFromTable (int ,int) ;

void
TransferPredicateLocksToHeapRelation(Relation relation)
{
 DropAllPredicateLocksFromTable(relation, 1);
}
