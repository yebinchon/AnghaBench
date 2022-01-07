
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_4__ {int instrument; int * (* ExecProcNodeReal ) (TYPE_1__*) ;} ;
typedef TYPE_1__ PlanState ;


 int InstrStartNode (int ) ;
 int InstrStopNode (int ,double) ;
 scalar_t__ TupIsNull (int *) ;
 int * stub1 (TYPE_1__*) ;

__attribute__((used)) static TupleTableSlot *
ExecProcNodeInstr(PlanState *node)
{
 TupleTableSlot *result;

 InstrStartNode(node->instrument);

 result = node->ExecProcNodeReal(node);

 InstrStopNode(node->instrument, TupIsNull(result) ? 0.0 : 1.0);

 return result;
}
