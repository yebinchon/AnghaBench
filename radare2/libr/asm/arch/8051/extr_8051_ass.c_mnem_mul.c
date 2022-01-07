
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 scalar_t__ r_str_ncasecmp (char*,char const* const,int) ;
 int single_byte_instr (int,int **) ;

__attribute__((used)) static bool mnem_mul(char const*const*arg, ut16 pc, ut8**out) {
 if (r_str_ncasecmp ("ab", arg[0], 3)) {
  return 0;
 }
 return single_byte_instr (0xa4, out);
}
