
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int cmd; } ;
struct TYPE_7__ {scalar_t__ plan; } ;
struct TYPE_9__ {int numOutput; TYPE_1__ ps; } ;
struct TYPE_8__ {int numLeft; int numRight; } ;
typedef TYPE_2__* SetOpStatePerGroup ;
typedef TYPE_3__ SetOpState ;
typedef TYPE_4__ SetOp ;


 int ERROR ;




 int elog (int ,char*,int) ;

__attribute__((used)) static void
set_output_count(SetOpState *setopstate, SetOpStatePerGroup pergroup)
{
 SetOp *plannode = (SetOp *) setopstate->ps.plan;

 switch (plannode->cmd)
 {
  case 129:
   if (pergroup->numLeft > 0 && pergroup->numRight > 0)
    setopstate->numOutput = 1;
   else
    setopstate->numOutput = 0;
   break;
  case 128:
   setopstate->numOutput =
    (pergroup->numLeft < pergroup->numRight) ?
    pergroup->numLeft : pergroup->numRight;
   break;
  case 131:
   if (pergroup->numLeft > 0 && pergroup->numRight == 0)
    setopstate->numOutput = 1;
   else
    setopstate->numOutput = 0;
   break;
  case 130:
   setopstate->numOutput =
    (pergroup->numLeft < pergroup->numRight) ?
    0 : (pergroup->numLeft - pergroup->numRight);
   break;
  default:
   elog(ERROR, "unrecognized set op: %d", (int) plannode->cmd);
   break;
 }
}
