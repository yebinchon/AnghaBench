
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aarch64_opnd_qualifier_t ;


 int aarch64_get_qualifier_esize (int ) ;
 char const**** int_reg ;

__attribute__((used)) static inline const char *
get_int_reg_name (int regno, aarch64_opnd_qualifier_t qualifier, int sp_reg_p)
{
  const int has_zr = sp_reg_p ? 0 : 1;
  const int is_64 = aarch64_get_qualifier_esize (qualifier) == 4 ? 0 : 1;
  return int_reg[has_zr][is_64][regno];
}
