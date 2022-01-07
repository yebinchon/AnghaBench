
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 scalar_t__ is_indirect_reg (char const* const) ;
 scalar_t__ is_reg (char const* const) ;
 scalar_t__ r_str_casecmp (char const* const,char*) ;
 int singlearg_direct (int,char const* const,int **) ;
 int singlearg_register (int,char const* const,int **) ;

__attribute__((used)) static bool mnem_xch(char const*const*arg, ut16 pc, ut8**out) {
 if (r_str_casecmp (arg[0], "a")) {
  return 0;
 }
 if (is_indirect_reg (arg[1])) {
  return singlearg_register (0xc6, arg[1], out);
 }
 if (is_reg (arg[1])) {
  return singlearg_register (0xc8, arg[1], out);
 }
 return singlearg_direct (0xc5, arg[1], out);
}
