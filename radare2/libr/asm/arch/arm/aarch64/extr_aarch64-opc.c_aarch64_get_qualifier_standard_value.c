
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t aarch64_opnd_qualifier_t ;
typedef int aarch64_insn ;
struct TYPE_2__ {int data2; } ;


 scalar_t__ TRUE ;
 TYPE_1__* aarch64_opnd_qualifiers ;
 int assert (int) ;
 scalar_t__ operand_variant_qualifier_p (size_t) ;

aarch64_insn
aarch64_get_qualifier_standard_value (aarch64_opnd_qualifier_t qualifier)
{
  assert (operand_variant_qualifier_p (qualifier) == TRUE);
  return aarch64_opnd_qualifiers[qualifier].data2;
}
