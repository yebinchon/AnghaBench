
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const**** int_reg ;

__attribute__((used)) static inline const char *
get_64bit_int_reg_name (int regno, int sp_reg_p)
{
  const int has_zr = sp_reg_p ? 0 : 1;
  return int_reg[has_zr][1][regno];
}
