
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int subplan; } ;
typedef TYPE_1__ SubqueryScanState ;


 int * ExecProcNode (int ) ;

__attribute__((used)) static TupleTableSlot *
SubqueryNext(SubqueryScanState *node)
{
 TupleTableSlot *slot;




 slot = ExecProcNode(node->subplan);






 return slot;
}
