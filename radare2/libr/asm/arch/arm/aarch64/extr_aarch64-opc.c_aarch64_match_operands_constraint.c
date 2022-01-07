
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum aarch64_opnd { ____Placeholder_aarch64_opnd } aarch64_opnd ;
struct TYPE_11__ {int index; int * error; int kind; } ;
typedef TYPE_2__ aarch64_operand_error ;
struct TYPE_12__ {TYPE_5__* opcode; TYPE_4__* operands; } ;
typedef TYPE_3__ aarch64_inst ;
struct TYPE_14__ {int tied_operand; int* operands; } ;
struct TYPE_10__ {scalar_t__ regno; } ;
struct TYPE_13__ {scalar_t__ skip; TYPE_1__ reg; } ;


 int AARCH64_MAX_OPND_NUM ;
 int AARCH64_OPDE_INVALID_VARIANT ;
 int AARCH64_OPDE_UNTIED_OPERAND ;
 int AARCH64_OPND_NIL ;
 int DEBUG_TRACE (char*,...) ;
 int TRUE ;
 scalar_t__ match_operands_qualifier (TYPE_3__*,int ) ;
 scalar_t__ operand_general_constraint_met_p (TYPE_4__*,int,int,TYPE_5__*,TYPE_2__*) ;

int
aarch64_match_operands_constraint (aarch64_inst *inst,
       aarch64_operand_error *mismatch_detail)
{
  int i;

  DEBUG_TRACE ("enter");






  i = inst->opcode->tied_operand;
  if (i > 0 && (inst->operands[0].reg.regno != inst->operands[i].reg.regno))
    {
      if (mismatch_detail)
 {
   mismatch_detail->kind = AARCH64_OPDE_UNTIED_OPERAND;
   mismatch_detail->index = i;
   mismatch_detail->error = ((void*)0);
 }
      return 0;
    }
  if (match_operands_qualifier (inst, TRUE ) == 0)
    {
      DEBUG_TRACE ("FAIL on operand qualifier matching");
      if (mismatch_detail)
 {



   mismatch_detail->kind = AARCH64_OPDE_INVALID_VARIANT;
   mismatch_detail->index = -1;
   mismatch_detail->error = ((void*)0);
 }
      return 0;
    }


  for (i = 0; i < AARCH64_MAX_OPND_NUM; ++i)
    {
      enum aarch64_opnd type = inst->opcode->operands[i];
      if (type == AARCH64_OPND_NIL)
 break;
      if (inst->operands[i].skip)
 {
   DEBUG_TRACE ("skip the incomplete operand %d", i);
   continue;
 }
      if (operand_general_constraint_met_p (inst->operands, i, type,
         inst->opcode, mismatch_detail) == 0)
 {
   DEBUG_TRACE ("FAIL on operand %d", i);
   return 0;
 }
    }

  DEBUG_TRACE ("PASS");

  return 1;
}
