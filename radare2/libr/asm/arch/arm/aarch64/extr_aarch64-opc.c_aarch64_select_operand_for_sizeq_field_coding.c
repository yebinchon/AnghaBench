
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * qualifiers_list; } ;
typedef TYPE_1__ aarch64_opcode ;


 size_t get_data_pattern (int ) ;
 int* significant_operand_index ;

int
aarch64_select_operand_for_sizeq_field_coding (const aarch64_opcode *opcode)
{
  return
    significant_operand_index [get_data_pattern (opcode->qualifiers_list[0])];
}
