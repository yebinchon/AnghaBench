
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut16 ;



__attribute__((used)) static inline ut16 arg_offset (ut16 pc, ut8 offset) {
 if (offset < 0x80) {
  return pc + offset;
 }
 offset = 0 - offset;
 return pc - offset;
}
