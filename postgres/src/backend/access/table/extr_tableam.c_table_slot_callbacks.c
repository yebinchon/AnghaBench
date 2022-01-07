
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlotOps ;
struct TYPE_8__ {TYPE_2__* rd_rel; TYPE_1__* rd_tableam; } ;
struct TYPE_7__ {scalar_t__ relkind; } ;
struct TYPE_6__ {int * (* slot_callbacks ) (TYPE_3__*) ;} ;
typedef TYPE_3__* Relation ;


 int Assert (int) ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_VIEW ;
 int TTSOpsHeapTuple ;
 int TTSOpsVirtual ;
 int * stub1 (TYPE_3__*) ;

const TupleTableSlotOps *
table_slot_callbacks(Relation relation)
{
 const TupleTableSlotOps *tts_cb;

 if (relation->rd_tableam)
  tts_cb = relation->rd_tableam->slot_callbacks(relation);
 else if (relation->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
 {






  tts_cb = &TTSOpsHeapTuple;
 }
 else
 {






  Assert(relation->rd_rel->relkind == RELKIND_VIEW ||
      relation->rd_rel->relkind == RELKIND_PARTITIONED_TABLE);
  tts_cb = &TTSOpsVirtual;
 }

 return tts_cb;
}
