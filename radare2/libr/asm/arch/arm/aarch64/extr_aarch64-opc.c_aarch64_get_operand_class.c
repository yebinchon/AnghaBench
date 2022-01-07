
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum aarch64_opnd { ____Placeholder_aarch64_opnd } aarch64_opnd ;
typedef enum aarch64_operand_class { ____Placeholder_aarch64_operand_class } aarch64_operand_class ;
struct TYPE_2__ {int op_class; } ;


 TYPE_1__* aarch64_operands ;

enum aarch64_operand_class
aarch64_get_operand_class (enum aarch64_opnd type)
{
  return aarch64_operands[type].op_class;
}
