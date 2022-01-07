
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {TYPE_1__* state; } ;
struct TYPE_8__ {int * ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_9__ {int relation; int readptr; TYPE_3__ ss; } ;
struct TYPE_6__ {int es_direction; } ;
typedef TYPE_4__ NamedTuplestoreScanState ;


 int Assert (int ) ;
 int ScanDirectionIsForward (int ) ;
 int tuplestore_gettupleslot (int ,int,int,int *) ;
 int tuplestore_select_read_pointer (int ,int ) ;

__attribute__((used)) static TupleTableSlot *
NamedTuplestoreScanNext(NamedTuplestoreScanState *node)
{
 TupleTableSlot *slot;


 Assert(ScanDirectionIsForward(node->ss.ps.state->es_direction));




 slot = node->ss.ss_ScanTupleSlot;
 tuplestore_select_read_pointer(node->relation, node->readptr);
 (void) tuplestore_gettupleslot(node->relation, 1, 0, slot);
 return slot;
}
