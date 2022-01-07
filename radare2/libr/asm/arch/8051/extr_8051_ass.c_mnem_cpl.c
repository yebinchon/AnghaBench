
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int r_str_casecmp (char*,char const* const) ;
 int single_byte_instr (int,int **) ;
 int singlearg_bit (int,char const* const,int **) ;

__attribute__((used)) static bool mnem_cpl(char const*const*arg, ut16 pc, ut8**out) {
 if (!r_str_casecmp ("a", arg[0])) {
  return single_byte_instr (0xf4, out);
 }
 if (!r_str_casecmp ("c", arg[0])) {
  return single_byte_instr (0xb3, out);
 }
 return singlearg_bit (0xb2, arg[0], out);
}
