
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int st32 ;



__attribute__((used)) static inline void sign_extend(st32 *value, ut8 bit) {
 if (*value & (1 << bit)) {
  *value |= 0xFFFFFFFF << bit;
 }
}
