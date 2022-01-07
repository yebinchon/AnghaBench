
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut16 ;


 int address_bit (char const* const,int*) ;
 int relative_address (scalar_t__,scalar_t__,int*) ;
 int to_address (char const* const,scalar_t__*) ;

__attribute__((used)) static bool mnem_jb(char const*const*arg, ut16 pc, ut8**out) {
 ut8 cmp_addr;
 if (!address_bit (arg[0], &cmp_addr)) {
  return 0;
 }
 ut16 jmp_addr;
 if (!to_address (arg[1], &jmp_addr)
  || !relative_address (pc + 1, jmp_addr, (*out) + 2)) {
  return 0;
 }
 (*out)[0] = 0x20;
 (*out)[1] = cmp_addr;

 *out += 3;
 return 1;
}
