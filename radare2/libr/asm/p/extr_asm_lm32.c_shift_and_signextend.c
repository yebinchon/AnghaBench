
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
typedef int st32 ;



__attribute__((used)) static st32 shift_and_signextend(ut8 shift, ut8 sign_loc, ut32 val) {
 ut32 tmp = val << shift;
 if (tmp & (1 << (shift + sign_loc))) {
  tmp |= ~((1 << (shift + sign_loc + 1)) - 1);
 }
 return tmp;
}
