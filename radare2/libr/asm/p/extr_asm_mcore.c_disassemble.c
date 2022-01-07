
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef int tmp ;
typedef int mcore_t ;
struct TYPE_7__ {int pc; } ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int handle ;
 int mcore_free (int *) ;
 scalar_t__ mcore_init (int *,int const*,int) ;
 int * mcore_next (int *) ;
 int mcore_snprint (char*,int,int ,int *) ;
 int r_asm_op_set_asm (TYPE_1__*,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 mcore_t* instr = ((void*)0);
 char tmp[256];
 if (!op || mcore_init (&handle, buf, len)) {
  return -1;
 }
 op->size = 2;
 if ((instr = mcore_next (&handle))) {
  mcore_snprint (tmp, sizeof (tmp), a->pc, instr);
  mcore_free (instr);
  r_asm_op_set_asm (op, tmp);
 } else {
  r_asm_op_set_asm (op, "invalid");
 }
 return op->size;
}
