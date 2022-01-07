
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static bool single_byte_instr(ut8 const instr, ut8 **out) {
 (*out)[0] = instr;
 *out += 1;
 return 1;
}
