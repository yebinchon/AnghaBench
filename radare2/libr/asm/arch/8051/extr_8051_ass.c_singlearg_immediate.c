
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int resolve_immediate (char const*,int*) ;

__attribute__((used)) static bool singlearg_immediate(ut8 firstbyte, char const* imm_str, ut8**out) {
 ut16 imm;
 if (imm_str[0] != '#'
  || !resolve_immediate (imm_str + 1, &imm)) {
  return 0;
 }
 (*out)[0] = firstbyte;
 (*out)[1] = imm & 0x00FF;
 *out += 2;
 return 1;
}
