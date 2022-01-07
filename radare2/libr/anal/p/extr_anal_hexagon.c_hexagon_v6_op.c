
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int ut32 ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_8__ {int size; int jump; int fail; int ptr; int val; scalar_t__ addr; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;
typedef TYPE_2__ HexInsn ;


 int hexagon_anal_instruction (TYPE_2__*,TYPE_1__*) ;
 int hexagon_disasm_instruction (int ,TYPE_2__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int r_read_le32 (int const*) ;

__attribute__((used)) static int hexagon_v6_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 HexInsn hi = {0};;
 ut32 data = 0;
 memset (op, 0, sizeof (RAnalOp));
 data = r_read_le32 (buf);
 int size = hexagon_disasm_instruction (data, &hi, (ut32) addr);
 op->size = size;
 if (size <= 0) {
  return size;
 }

 op->addr = addr;
 op->jump = op->fail = -1;
 op->ptr = op->val = -1;
 return hexagon_anal_instruction (&hi, op);
}
