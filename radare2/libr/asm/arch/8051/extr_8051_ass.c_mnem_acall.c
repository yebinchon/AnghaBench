
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int to_address (char const* const,int*) ;

__attribute__((used)) static bool mnem_acall(char const*const*arg, ut16 pc, ut8**out) {
 ut16 address;
 if (!to_address (arg[0], &address)) {
  return 0;
 }
 (*out)[0] = ((address & 0x0700) >> 3) | 0x11;
 (*out)[1] = address & 0x00FF;
 *out += 2;
 return 1;
}
