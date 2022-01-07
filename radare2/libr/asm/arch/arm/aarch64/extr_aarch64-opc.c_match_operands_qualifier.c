
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
typedef scalar_t__* aarch64_opnd_qualifier_seq_t ;
struct TYPE_7__ {TYPE_1__* operands; TYPE_4__* opcode; } ;
typedef TYPE_2__ aarch64_inst ;
struct TYPE_8__ {int flags; scalar_t__* operands; int qualifiers_list; } ;
struct TYPE_6__ {scalar_t__ qualifier; } ;


 int AARCH64_MAX_OPND_NUM ;
 scalar_t__ AARCH64_OPND_NIL ;
 int DEBUG_TRACE (char*) ;
 int DEBUG_TRACE_IF (int,char*,int ,int ,int) ;
 int FALSE ;
 int F_STRICT ;
 scalar_t__ TRUE ;
 int aarch64_find_best_match (TYPE_2__*,int ,int,scalar_t__*) ;
 int aarch64_get_qualifier_name (scalar_t__) ;
 int aarch64_num_of_operands (TYPE_4__*) ;

__attribute__((used)) static int
match_operands_qualifier (aarch64_inst *inst, bfd_boolean update_p)
{
  int i, nops;
  aarch64_opnd_qualifier_seq_t qualifiers = {0};

  if (!aarch64_find_best_match (inst, inst->opcode->qualifiers_list, -1,
          qualifiers))
    {
      DEBUG_TRACE ("matching FAIL");
      return 0;
    }

  if (inst->opcode->flags & F_STRICT)
    {

      nops = aarch64_num_of_operands (inst->opcode);
      for (i = 0; i < nops; ++i)
 if (inst->operands[i].qualifier != qualifiers[i])
   return FALSE;
    }


  if (update_p == TRUE)
    for (i = 0; i < AARCH64_MAX_OPND_NUM; ++i)
      {
 if (inst->opcode->operands[i] == AARCH64_OPND_NIL)
   break;
 DEBUG_TRACE_IF (inst->operands[i].qualifier != qualifiers[i],
   "update %s with %s for operand %d",
   aarch64_get_qualifier_name (inst->operands[i].qualifier),
   aarch64_get_qualifier_name (qualifiers[i]), i);
 inst->operands[i].qualifier = qualifiers[i];
      }

  DEBUG_TRACE ("matching SUCCESS");
  return 1;
}
