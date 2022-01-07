
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*,char*) ;int target; int (* print_address_func ) (int ,struct disassemble_info*) ;} ;
typedef int str ;
typedef int bfd_vma ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ aarch64_opnd_info ;
struct TYPE_8__ {scalar_t__* operands; } ;
typedef TYPE_2__ aarch64_opcode ;


 int AARCH64_MAX_OPND_NUM ;
 scalar_t__ AARCH64_OPND_NIL ;
 int aarch64_print_operand (char*,int,int ,TYPE_2__ const*,TYPE_1__ const*,int,int*,int *,char**) ;
 int no_notes ;
 int stub1 (int ,char*,char*) ;
 int stub2 (int ,struct disassemble_info*) ;
 int stub3 (int ,char*,char*) ;
 int stub4 (int ,char*,char*) ;

__attribute__((used)) static void
print_operands (bfd_vma pc, const aarch64_opcode *opcode,
  const aarch64_opnd_info *opnds, struct disassemble_info *info)
{
  int i, pcrel_p, num_printed;
  char *notes = ((void*)0);
  for (i = 0, num_printed = 0; i < AARCH64_MAX_OPND_NUM; ++i)
    {
      char str[128];





      if (opcode->operands[i] == AARCH64_OPND_NIL
   || opnds[i].type == AARCH64_OPND_NIL)
 break;


      aarch64_print_operand (str, sizeof (str), pc, opcode, opnds, i, &pcrel_p,
        &info->target, &notes);


      if (str[0] != '\0')
 (*info->fprintf_func) (info->stream, "%s",
          num_printed++ == 0 ? " " : ", ");


      if (pcrel_p)
 (*info->print_address_func) (info->target, info);
      else
 (*info->fprintf_func) (info->stream, "%s", str);
    }

    if (notes && !no_notes)
      (*info->fprintf_func) (info->stream, " ; note: %s", notes);
}
