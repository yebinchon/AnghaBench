
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* operands; int value; } ;
typedef TYPE_2__ aarch64_inst ;
struct TYPE_9__ {int member_1; int member_0; } ;
typedef TYPE_3__ aarch64_field ;
struct TYPE_7__ {int qualifier; } ;


 int AARCH64_OPND_QLF_S_S ;
 int FLD_size ;
 int extract_field_2 (TYPE_3__*,int ,int ) ;
 int gen_sub_field (int ,int ,int,TYPE_3__*) ;

__attribute__((used)) static int
decode_asisd_fcvtxn (aarch64_inst *inst)
{
  aarch64_field field = {0, 0};
  gen_sub_field (FLD_size, 0, 1, &field);
  if (!extract_field_2 (&field, inst->value, 0))
    return 0;
  inst->operands[0].qualifier = AARCH64_OPND_QLF_S_S;
  return 1;
}
