
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t aarch64_opnd_qualifier_t ;
struct TYPE_2__ {int data0; } ;


 scalar_t__ TRUE ;
 TYPE_1__* aarch64_opnd_qualifiers ;
 int assert (int) ;
 scalar_t__ qualifier_value_in_range_constraint_p (size_t) ;

__attribute__((used)) static int
get_lower_bound (aarch64_opnd_qualifier_t qualifier)
{
  assert (qualifier_value_in_range_constraint_p (qualifier) == TRUE);
  return aarch64_opnd_qualifiers[qualifier].data0;
}
