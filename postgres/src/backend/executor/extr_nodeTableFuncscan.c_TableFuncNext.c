
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {int ps_ExprContext; } ;
struct TYPE_7__ {TYPE_1__ ps; int * ss_ScanTupleSlot; } ;
struct TYPE_8__ {int * tupstore; TYPE_2__ ss; } ;
typedef TYPE_3__ TableFuncScanState ;


 int tfuncFetchRows (TYPE_3__*,int ) ;
 int tuplestore_gettupleslot (int *,int,int,int *) ;

__attribute__((used)) static TupleTableSlot *
TableFuncNext(TableFuncScanState *node)
{
 TupleTableSlot *scanslot;

 scanslot = node->ss.ss_ScanTupleSlot;





 if (node->tupstore == ((void*)0))
  tfuncFetchRows(node, node->ss.ps.ps_ExprContext);




 (void) tuplestore_gettupleslot(node->tupstore,
           1,
           0,
           scanslot);
 return scanslot;
}
