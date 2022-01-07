
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ last_var; int fixed; int * known_desc; int * kind; } ;
struct TYPE_9__ {TYPE_1__ fetch; } ;
struct TYPE_11__ {TYPE_2__ d; int opcode; int * resnull; int * resvalue; int member_0; } ;
struct TYPE_10__ {scalar_t__ last_inner; scalar_t__ last_outer; scalar_t__ last_scan; } ;
typedef TYPE_3__ LastAttnumInfo ;
typedef int ExprState ;
typedef TYPE_4__ ExprEvalStep ;


 int EEOP_INNER_FETCHSOME ;
 int EEOP_OUTER_FETCHSOME ;
 int EEOP_SCAN_FETCHSOME ;
 scalar_t__ ExecComputeSlotInfo (int *,TYPE_4__*) ;
 int ExprEvalPushStep (int *,TYPE_4__*) ;

__attribute__((used)) static void
ExecPushExprSlots(ExprState *state, LastAttnumInfo *info)
{
 ExprEvalStep scratch = {0};

 scratch.resvalue = ((void*)0);
 scratch.resnull = ((void*)0);


 if (info->last_inner > 0)
 {
  scratch.opcode = EEOP_INNER_FETCHSOME;
  scratch.d.fetch.last_var = info->last_inner;
  scratch.d.fetch.fixed = 0;
  scratch.d.fetch.kind = ((void*)0);
  scratch.d.fetch.known_desc = ((void*)0);
  if (ExecComputeSlotInfo(state, &scratch))
   ExprEvalPushStep(state, &scratch);
 }
 if (info->last_outer > 0)
 {
  scratch.opcode = EEOP_OUTER_FETCHSOME;
  scratch.d.fetch.last_var = info->last_outer;
  scratch.d.fetch.fixed = 0;
  scratch.d.fetch.kind = ((void*)0);
  scratch.d.fetch.known_desc = ((void*)0);
  if (ExecComputeSlotInfo(state, &scratch))
   ExprEvalPushStep(state, &scratch);
 }
 if (info->last_scan > 0)
 {
  scratch.opcode = EEOP_SCAN_FETCHSOME;
  scratch.d.fetch.last_var = info->last_scan;
  scratch.d.fetch.fixed = 0;
  scratch.d.fetch.kind = ((void*)0);
  scratch.d.fetch.known_desc = ((void*)0);
  if (ExecComputeSlotInfo(state, &scratch))
   ExprEvalPushStep(state, &scratch);
 }
}
