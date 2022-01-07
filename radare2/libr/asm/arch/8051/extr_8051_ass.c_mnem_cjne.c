
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int address_direct (char const* const,int*) ;
 scalar_t__ is_indirect_reg (char const* const) ;
 scalar_t__ is_reg (char const* const) ;
 int r_str_casecmp (char const* const,char*) ;
 int register_number (char const* const) ;
 int relative_address (int,int,int*) ;
 int resolve_immediate (char const* const,int*) ;
 int to_address (char const* const,int*) ;

__attribute__((used)) static bool mnem_cjne(char const*const*arg, ut16 pc, ut8**out) {
 ut16 address;
 if (!to_address (arg[2], &address)
  || !relative_address (pc+1, address, (*out)+2)) {
  return 0;
 }
 if (!r_str_casecmp (arg[0], "a")) {
  if (arg[1][0] == '#') {
   ut16 imm;
   if (!resolve_immediate (arg[1] + 1, &imm)) {
    return 0;
   }
   (*out)[0] = 0xb4;
   (*out)[1] = imm & 0x00FF;

   *out += 3;
   return 1;
  }
  ut8 address;
  if (!address_direct (arg[1], &address)) {
   return 0;
  }
  (*out)[0] = 0xb5;
  (*out)[1] = address;

  *out += 3;
  return 1;
 }
 if (is_reg (arg[0])) {
  ut16 imm;
  if (!resolve_immediate (arg[1] + 1, &imm)) {
   return 0;
  }
  (*out)[0] = 0xbf | register_number (arg[0]) ;
  (*out)[1] = imm & 0x00FF;

  *out += 3;
  return 1;
 }
 if (is_indirect_reg (arg[0])) {
  ut16 imm;
  if (!resolve_immediate (arg[1] + 1, &imm)) {
   return 0;
  }
  (*out)[0] = 0xb6 | register_number (arg[0]) ;
  (*out)[1] = imm & 0x00FF;

  *out += 3;
  return 1;
 }
 return 0;
}
