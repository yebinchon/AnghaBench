
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static int mips_r(ut8 *b, int op, int rs, int rt, int rd, int sa, int fun) {



 if (rs == -1 || rt == -1) {
  return -1;
 }
 b[3] = ((op<<2)&0xfc) | ((rs>>3)&3);
 b[2] = (rs<<5) | (rt&0x1f);
 b[1] = ((rd<<3)&0xff) | (sa>>2);
 b[0] = (fun&0x3f) | ((sa&3)<<6);
 return 4;
}
