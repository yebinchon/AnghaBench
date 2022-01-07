
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ExecProcNode; int ExecProcNodeReal; } ;
typedef TYPE_1__ PlanState ;
typedef int ExecProcNodeMtd ;


 int ExecProcNodeFirst ;

void
ExecSetExecProcNode(PlanState *node, ExecProcNodeMtd function)
{






 node->ExecProcNodeReal = function;
 node->ExecProcNode = ExecProcNodeFirst;
}
