
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef size_t aarch64_opnd_qualifier_t ;
struct TYPE_2__ {scalar_t__ kind; } ;


 int FALSE ;
 scalar_t__ OQK_OPD_VARIANT ;
 int TRUE ;
 TYPE_1__* aarch64_opnd_qualifiers ;

__attribute__((used)) static inline bfd_boolean
operand_variant_qualifier_p (aarch64_opnd_qualifier_t qualifier)
{
  return (aarch64_opnd_qualifiers[qualifier].kind == OQK_OPD_VARIANT)
    ? TRUE : FALSE;
}
