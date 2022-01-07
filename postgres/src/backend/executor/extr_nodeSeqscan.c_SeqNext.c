
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int * TableScanDesc ;
struct TYPE_9__ {int es_snapshot; int es_direction; } ;
struct TYPE_6__ {TYPE_4__* state; } ;
struct TYPE_7__ {int * ss_currentScanDesc; int ss_currentRelation; int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ ss; } ;
typedef TYPE_3__ SeqScanState ;
typedef int ScanDirection ;
typedef TYPE_4__ EState ;


 int * table_beginscan (int ,int ,int ,int *) ;
 scalar_t__ table_scan_getnextslot (int *,int ,int *) ;

__attribute__((used)) static TupleTableSlot *
SeqNext(SeqScanState *node)
{
 TableScanDesc scandesc;
 EState *estate;
 ScanDirection direction;
 TupleTableSlot *slot;




 scandesc = node->ss.ss_currentScanDesc;
 estate = node->ss.ps.state;
 direction = estate->es_direction;
 slot = node->ss.ss_ScanTupleSlot;

 if (scandesc == ((void*)0))
 {




  scandesc = table_beginscan(node->ss.ss_currentRelation,
           estate->es_snapshot,
           0, ((void*)0));
  node->ss.ss_currentScanDesc = scandesc;
 }




 if (table_scan_getnextslot(scandesc, direction, slot))
  return slot;
 return ((void*)0);
}
