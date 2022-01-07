
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ut8 ;
typedef int ut16 ;



__attribute__((used)) static inline ut8 get_subopcode(const ut16 instr) {
 return (instr & 0x7e00000) >> 21;
}
