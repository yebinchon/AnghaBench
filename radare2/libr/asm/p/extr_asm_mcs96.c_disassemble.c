
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int mcs96_len (int const*,int,int *) ;
 int memcmp (int const*,char*,int) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 if (len > 1 && !memcmp (buf, "\xff\xff", 2)) {
  return -1;
 }
 op->size = mcs96_len (buf, len, &op->buf_asm);
 return op->size;
}
