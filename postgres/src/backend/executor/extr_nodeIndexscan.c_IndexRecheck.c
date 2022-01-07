
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_10__ {int * ecxt_scantuple; } ;
struct TYPE_7__ {TYPE_4__* ps_ExprContext; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_9__ {int indexqualorig; TYPE_2__ ss; } ;
typedef TYPE_3__ IndexScanState ;
typedef TYPE_4__ ExprContext ;


 int ExecQualAndReset (int ,TYPE_4__*) ;

__attribute__((used)) static bool
IndexRecheck(IndexScanState *node, TupleTableSlot *slot)
{
 ExprContext *econtext;




 econtext = node->ss.ps.ps_ExprContext;


 econtext->ecxt_scantuple = slot;
 return ExecQualAndReset(node->indexqualorig, econtext);
}
