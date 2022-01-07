
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int address_direct (char const* const,int*) ;
 scalar_t__ is_reg (char const* const) ;
 int register_number (char const* const) ;
 int relative_address (int ,int ,int*) ;
 int to_address (char const* const,int *) ;

__attribute__((used)) static bool mnem_djnz(char const*const*arg, ut16 pc, ut8**out) {
 ut16 jmp_address;
 if (!to_address (arg[1], &jmp_address)) {
  return 0;
 }
 if (!relative_address (pc, jmp_address, (*out) + 2)) {
  return 0;
 }

 if (is_reg (arg[0])) {
  (*out)[0] = 0xd8 | register_number (arg[0]);
  (*out)[1] = (*out)[2];
  *out += 2;
  return 1;
 }
 ut8 dec_address;
 if (!address_direct (arg[0], &dec_address)) {
  return 0;
 }
 (*out)[0] = 0xd5;
 (*out)[1] = dec_address;
 (*out)[2] -= 1;
 *out += 3;
 return 1;
}
