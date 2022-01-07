
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 scalar_t__ is_indirect_reg (char const* const) ;
 scalar_t__ is_reg (char const* const) ;
 int r_str_casecmp (char*,char const* const) ;
 int single_byte_instr (int,int **) ;
 int singlearg_direct (int,char const* const,int **) ;
 int singlearg_register (int,char const* const,int **) ;

__attribute__((used)) static bool mnem_inc(char const*const*arg, ut16 pc, ut8**out) {
 if (is_reg (arg[0])) {
  return singlearg_register (0x08, arg[0], out);
 }
 if (is_indirect_reg (arg[0])) {
  return singlearg_register (0x06, arg[0], out);
 }
 if (!r_str_casecmp ("a", arg[0])) {
  return single_byte_instr (0x04, out);
 }
 if (!r_str_casecmp ("dptr", arg[0])) {
  return single_byte_instr (0xa3, out);
 }
 return singlearg_direct (0x05, arg[0], out);
}
