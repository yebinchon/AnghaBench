
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_5__ {int * (* ExecProcNode ) (TYPE_1__*) ;int * (* ExecProcNodeReal ) (TYPE_1__*) ;scalar_t__ instrument; } ;
typedef TYPE_1__ PlanState ;


 int * ExecProcNodeInstr (TYPE_1__*) ;
 int check_stack_depth () ;
 int * stub1 (TYPE_1__*) ;

__attribute__((used)) static TupleTableSlot *
ExecProcNodeFirst(PlanState *node)
{







 check_stack_depth();






 if (node->instrument)
  node->ExecProcNode = ExecProcNodeInstr;
 else
  node->ExecProcNode = node->ExecProcNodeReal;

 return node->ExecProcNode(node);
}
