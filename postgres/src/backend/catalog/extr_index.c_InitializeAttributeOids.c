
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_2__ {int attrelid; } ;
typedef int Relation ;
typedef int Oid ;


 int RelationGetDescr (int ) ;
 TYPE_1__* TupleDescAttr (int ,int) ;

__attribute__((used)) static void
InitializeAttributeOids(Relation indexRelation,
      int numatts,
      Oid indexoid)
{
 TupleDesc tupleDescriptor;
 int i;

 tupleDescriptor = RelationGetDescr(indexRelation);

 for (i = 0; i < numatts; i += 1)
  TupleDescAttr(tupleDescriptor, i)->attrelid = indexoid;
}
