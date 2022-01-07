
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
struct TYPE_6__ {scalar_t__ opcode; int (* handler ) (int *,TYPE_1__*,int ,int *) ;int args; } ;
struct TYPE_5__ {int size; int cycles; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;
typedef scalar_t__ PicMidrangeOpcode ;
typedef int PicMidrangeOpArgsVal ;


 int PIC_MIDRANGE_OPINFO_LEN ;
 int R_ANAL_OP_TYPE_ILL ;
 int R_ANAL_OP_TYPE_NOP ;
 int anal_pic_midrange_extract_args (int ,int ,int *) ;
 int anal_pic_midrange_malloc (int *,int) ;
 scalar_t__ pic_midrange_get_opcode (int ) ;
 TYPE_3__* pic_midrange_op_anal_info ;
 int r_read_le16 (int const*) ;
 int stub1 (int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static int anal_pic_midrange_op (RAnal *anal, RAnalOp *op, ut64 addr,
     const ut8 *buf, int len) {

 ut16 instr;
 int i;

 anal_pic_midrange_malloc (anal, 0);

 if (!buf || len < 2) {
  op->type = R_ANAL_OP_TYPE_ILL;
  return op->size;
 }

 instr = r_read_le16 (buf);


 op->size = 2;
 op->cycles = 1;
 op->type = R_ANAL_OP_TYPE_NOP;

 PicMidrangeOpcode opcode = pic_midrange_get_opcode (instr);
 PicMidrangeOpArgsVal args_val;

 for (i = 0; i < PIC_MIDRANGE_OPINFO_LEN; i++) {
  if (pic_midrange_op_anal_info[i].opcode == opcode) {
   anal_pic_midrange_extract_args (
    instr, pic_midrange_op_anal_info[i].args,
    &args_val);
   pic_midrange_op_anal_info[i].handler (anal, op, addr,
             &args_val);
   break;
  }
 }

 return op->size;
}
