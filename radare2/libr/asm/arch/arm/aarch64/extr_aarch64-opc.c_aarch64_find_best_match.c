
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ aarch64_opnd_qualifier_t ;
typedef scalar_t__* aarch64_opnd_qualifier_seq_t ;
struct TYPE_5__ {TYPE_2__* operands; int opcode; } ;
typedef TYPE_1__ aarch64_inst ;
struct TYPE_6__ {scalar_t__ qualifier; } ;


 int AARCH64_MAX_OPND_NUM ;
 int AARCH64_MAX_QLF_SEQ_NUM ;
 scalar_t__ AARCH64_OPND_QLF_NIL ;
 int DEBUG_TRACE (char*,...) ;
 int DEBUG_TRACE_IF (int,char*) ;
 scalar_t__ TRUE ;
 int aarch64_num_of_operands (int ) ;
 scalar_t__ debug_dump ;
 int dump_match_qualifiers (TYPE_2__*,scalar_t__ const*) ;
 int dump_qualifier_sequence (scalar_t__ const*) ;
 scalar_t__ empty_qualifier_sequence_p (scalar_t__ const*) ;
 scalar_t__ operand_also_qualified_p (TYPE_2__*,scalar_t__ const) ;

int
aarch64_find_best_match (const aarch64_inst *inst,
    const aarch64_opnd_qualifier_seq_t *qualifiers_list,
    int stop_at, aarch64_opnd_qualifier_t *ret)
{
  int found = 0;
  int i, num_opnds;
  const aarch64_opnd_qualifier_t *qualifiers;

  num_opnds = aarch64_num_of_operands (inst->opcode);
  if (num_opnds == 0)
    {
      DEBUG_TRACE ("SUCCEED: no operand");
      return 1;
    }

  if (stop_at < 0 || stop_at >= num_opnds)
    stop_at = num_opnds - 1;


  for (i = 0; i < AARCH64_MAX_QLF_SEQ_NUM; ++i, ++qualifiers_list)
    {
      int j;
      qualifiers = *qualifiers_list;


      found = 1;

      DEBUG_TRACE ("%d", i);







      if (empty_qualifier_sequence_p (qualifiers) == TRUE)
 {
   DEBUG_TRACE_IF (i == 0, "SUCCEED: empty qualifier list");
   if (i)
     found = 0;
   break;
 }

      for (j = 0; j < num_opnds && j <= stop_at; ++j, ++qualifiers)
 {
   if (inst->operands[j].qualifier == AARCH64_OPND_QLF_NIL)
     {






       continue;
     }
   else if (*qualifiers != inst->operands[j].qualifier)
     {



       if (operand_also_qualified_p (inst->operands + j, *qualifiers))
  continue;
       else
  {
    found = 0;
    break;
  }
     }
   else
     continue;
 }


      if (found == 1)
 break;
    }

  if (found == 1)
    {

      int j;
      qualifiers = *qualifiers_list;

      DEBUG_TRACE ("complete qualifiers using list %d", i);





      for (j = 0; j <= stop_at; ++j, ++qualifiers)
 ret[j] = *qualifiers;
      for (; j < AARCH64_MAX_OPND_NUM; ++j)
 ret[j] = AARCH64_OPND_QLF_NIL;

      DEBUG_TRACE ("SUCCESS");
      return 1;
    }

  DEBUG_TRACE ("FAIL");
  return 0;
}
