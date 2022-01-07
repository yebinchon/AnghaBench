
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int R_MAX (int ,int) ;
 int gbDisass (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *r_op, const ut8 *buf, int len) {
 int dlen = gbDisass(r_op,buf,len);
 return r_op->size = R_MAX (0, dlen);
}
