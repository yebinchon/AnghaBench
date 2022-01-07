
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*,char*,char*,scalar_t__) ;} ;
struct TYPE_8__ {TYPE_2__* cond; TYPE_1__* opcode; } ;
typedef TYPE_3__ aarch64_inst ;
struct TYPE_7__ {scalar_t__* names; } ;
struct TYPE_6__ {int flags; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int F_COND ;
 int remove_dot_suffix (char*,TYPE_3__ const*) ;
 int stub1 (int ,char*,char*,char*,scalar_t__) ;

__attribute__((used)) static void
print_comment (const aarch64_inst *inst, struct disassemble_info *info)
{
return;
  if (inst->opcode->flags & F_COND)
    {
      char name[8];
      unsigned int i, num_conds;

      remove_dot_suffix (name, inst);
      num_conds = ARRAY_SIZE (inst->cond->names);
      for (i = 1; i < num_conds && inst->cond->names[i]; ++i)
 (*info->fprintf_func) (info->stream, "%s %s.%s",
          i == 1 ? "  //" : ",",
          name, inst->cond->names[i]);
    }
}
