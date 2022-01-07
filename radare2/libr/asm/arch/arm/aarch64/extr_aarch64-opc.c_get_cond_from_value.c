
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aarch64_insn ;
typedef int aarch64_cond ;


 int const* aarch64_conds ;
 int assert (int) ;

const aarch64_cond *
get_cond_from_value (aarch64_insn value)
{
  assert (value < 16);
  return &aarch64_conds[(unsigned int) value];
}
