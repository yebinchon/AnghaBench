
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ relkind; } ;
struct TYPE_7__ {int rd_isvalid; int rd_refcnt; TYPE_2__* rd_rel; int rd_isnailed; } ;
typedef TYPE_1__* Relation ;
typedef int HeapTuple ;
typedef scalar_t__ Form_pg_class ;


 int Assert (int ) ;
 int CLASS_TUPLE_SIZE ;
 scalar_t__ GETSTRUCT (int ) ;
 int IsTransactionState () ;
 scalar_t__ RELKIND_INDEX ;
 int RelationGetRelid (TYPE_1__*) ;
 int RelationInitPhysicalAddr (TYPE_1__*) ;
 int RelationReloadIndexInfo (TYPE_1__*) ;
 int ScanPgRelation (int ,int,int) ;
 scalar_t__ criticalRelcachesBuilt ;
 int heap_freetuple (int ) ;
 int memcpy (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static void
RelationReloadNailed(Relation relation)
{
 Assert(relation->rd_isnailed);





 RelationInitPhysicalAddr(relation);


 relation->rd_isvalid = 0;







 if (!IsTransactionState() || relation->rd_refcnt <= 1)
  return;

 if (relation->rd_rel->relkind == RELKIND_INDEX)
 {




  RelationReloadIndexInfo(relation);
 }
 else
 {







  if (criticalRelcachesBuilt)
  {
   HeapTuple pg_class_tuple;
   Form_pg_class relp;





   relation->rd_isvalid = 1;

   pg_class_tuple = ScanPgRelation(RelationGetRelid(relation),
           1, 0);
   relp = (Form_pg_class) GETSTRUCT(pg_class_tuple);
   memcpy(relation->rd_rel, relp, CLASS_TUPLE_SIZE);
   heap_freetuple(pg_class_tuple);





   relation->rd_isvalid = 1;
  }
 }
}
