
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int spc700Disass (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *r_op, const ut8 *buf, int len) {
 int dlen = spc700Disass(r_op, buf, len);
 if (dlen < 0) {
  dlen = 0;
 }
 r_op->size = dlen;
 return dlen;
}
