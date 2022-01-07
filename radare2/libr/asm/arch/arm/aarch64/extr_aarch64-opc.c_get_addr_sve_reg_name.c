
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ aarch64_opnd_qualifier_t ;


 scalar_t__ AARCH64_OPND_QLF_S_D ;
 scalar_t__ AARCH64_OPND_QLF_S_S ;
 int assert (int) ;
 char const*** sve_reg ;

__attribute__((used)) static inline const char *
get_addr_sve_reg_name (int regno, aarch64_opnd_qualifier_t qualifier)
{
  assert (qualifier == AARCH64_OPND_QLF_S_S
   || qualifier == AARCH64_OPND_QLF_S_D);
  return sve_reg[qualifier == AARCH64_OPND_QLF_S_D][regno];
}
