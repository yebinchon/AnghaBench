
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {int flagColIdx; } ;
struct TYPE_5__ {scalar_t__ plan; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;
typedef TYPE_2__ SetOpState ;
typedef TYPE_3__ SetOp ;


 int Assert (int) ;
 int DatumGetInt32 (int ) ;
 int slot_getattr (int *,int ,int*) ;

__attribute__((used)) static int
fetch_tuple_flag(SetOpState *setopstate, TupleTableSlot *inputslot)
{
 SetOp *node = (SetOp *) setopstate->ps.plan;
 int flag;
 bool isNull;

 flag = DatumGetInt32(slot_getattr(inputslot,
           node->flagColIdx,
           &isNull));
 Assert(!isNull);
 Assert(flag == 0 || flag == 1);
 return flag;
}
