
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int st32 ;
typedef int csh ;
struct TYPE_11__ {TYPE_1__* detail; } ;
typedef TYPE_4__ cs_insn ;
struct TYPE_10__ {int type; int value; } ;
struct TYPE_9__ {int base; int index; int scale; int disp; } ;
struct TYPE_12__ {int type; int reg; int fp; int vector_index; scalar_t__ subtracted; TYPE_3__ shift; int setend; int imm; TYPE_2__ mem; } ;
typedef TYPE_5__ cs_arm_op ;
struct TYPE_13__ {int op_count; int vector_size; scalar_t__ vector_data; int cps_mode; int cps_flag; scalar_t__ cc; int mem_barrier; scalar_t__ writeback; scalar_t__ update_flags; scalar_t__ usermode; TYPE_5__* operands; } ;
typedef TYPE_6__ cs_arm ;
struct TYPE_8__ {TYPE_6__ arm; } ;
typedef int RStrBuf ;


 scalar_t__ ARM_CC_AL ;
 scalar_t__ ARM_CC_INVALID ;
 int ARM_CPSFLAG_INVALID ;
 int ARM_CPSMODE_INVALID ;
 int ARM_MB_INVALID ;
 int ARM_REG_INVALID ;




 int ARM_SFT_INVALID ;
 scalar_t__ ARM_VECTORDATA_INVALID ;
 int cc_name (scalar_t__) ;
 int cs_reg_name (int ,int) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_appendf (int *,char*,int) ;
 int r_strbuf_init (int *) ;
 int shift_type_name (int) ;
 int vector_data_type_name (scalar_t__) ;

__attribute__((used)) static void opex(RStrBuf *buf, csh handle, cs_insn *insn) {
 int i;
 r_strbuf_init (buf);
 r_strbuf_append (buf, "{");
 cs_arm *x = &insn->detail->arm;
 r_strbuf_append (buf, "\"operands\":[");
 for (i = 0; i < x->op_count; i++) {
  cs_arm_op *op = &x->operands[i];
  if (i > 0) {
   r_strbuf_append (buf, ",");
  }
  r_strbuf_append (buf, "{");
  switch (op->type) {
  case 142:
   r_strbuf_append (buf, "\"type\":\"reg\"");
   r_strbuf_appendf (buf, ",\"value\":\"%s\"", cs_reg_name (handle, op->reg));
   break;
  case 145:
   r_strbuf_append (buf, "\"type\":\"imm\"");
   r_strbuf_appendf (buf, ",\"value\":%d", (st32)op->imm);
   break;
  case 144:
   r_strbuf_append (buf, "\"type\":\"mem\"");
   if (op->mem.base != ARM_REG_INVALID) {
    r_strbuf_appendf (buf, ",\"base\":\"%s\"", cs_reg_name (handle, op->mem.base));
   }
   if (op->mem.index != ARM_REG_INVALID) {
    r_strbuf_appendf (buf, ",\"index\":\"%s\"", cs_reg_name (handle, op->mem.index));
   }
   r_strbuf_appendf (buf, ",\"scale\":%d", op->mem.scale);
   r_strbuf_appendf (buf, ",\"disp\":%d", op->mem.disp);
   break;
  case 146:
   r_strbuf_append (buf, "\"type\":\"fp\"");
   r_strbuf_appendf (buf, ",\"value\":%lf", op->fp);
   break;
  case 147:
   r_strbuf_append (buf, "\"type\":\"cimm\"");
   r_strbuf_appendf (buf, ",\"value\":%d", (st32)op->imm);
   break;
  case 143:
   r_strbuf_append (buf, "\"type\":\"pimm\"");
   r_strbuf_appendf (buf, ",\"value\":%d", (st32)op->imm);
   break;
  case 141:
   r_strbuf_append (buf, "\"type\":\"setend\"");
   switch (op->setend) {
   case 139:
    r_strbuf_append (buf, ",\"value\":\"be\"");
    break;
   case 138:
    r_strbuf_append (buf, ",\"value\":\"le\"");
    break;
   default:
    r_strbuf_append (buf, ",\"value\":\"invalid\"");
    break;
   }
   break;
  case 140:
   r_strbuf_append (buf, "\"type\":\"sysreg\"");
   r_strbuf_appendf (buf, ",\"value\":\"%s\"", cs_reg_name (handle, op->reg));
   break;
  default:
   r_strbuf_append (buf, ",\"type\":\"invalid\"");
   break;
  }
  if (op->shift.type != ARM_SFT_INVALID) {
   r_strbuf_append (buf, ",\"shift\":{");
   switch (op->shift.type) {
   case 137:
   case 135:
   case 133:
   case 131:
   case 129:
    r_strbuf_appendf (buf, "\"type\":\"%s\"", shift_type_name (op->shift.type));
    r_strbuf_appendf (buf, ",\"value\":\"%u\"", op->shift.value);
    break;
   case 136:
   case 134:
   case 132:
   case 130:
   case 128:
    r_strbuf_appendf (buf, "\"type\":\"%s\"", shift_type_name (op->shift.type));
    r_strbuf_appendf (buf, ",\"value\":\"%d\"", cs_reg_name (handle, op->shift.value));
    break;
   default:
    break;
   }
   r_strbuf_append (buf, "}");
  }
  if (op->vector_index != -1) {
   r_strbuf_appendf (buf, ",\"vector_index\":\"%d\"", op->vector_index);
  }
  if (op->subtracted) {
   r_strbuf_append (buf, ",\"subtracted\":true");
  }
  r_strbuf_append (buf, "}");
 }
 r_strbuf_append (buf, "]");
 if (x->usermode) {
  r_strbuf_append (buf, ",\"usermode\":true");
 }
 if (x->update_flags) {
  r_strbuf_append (buf, ",\"update_flags\":true");
 }
 if (x->writeback) {
  r_strbuf_append (buf, ",\"writeback\":true");
 }
 if (x->vector_size) {
  r_strbuf_appendf (buf, ",\"vector_size\":%d", x->vector_size);
 }
 if (x->vector_data != ARM_VECTORDATA_INVALID) {
  r_strbuf_appendf (buf, ",\"vector_data\":\"%s\"", vector_data_type_name (x->vector_data));
 }
 if (x->cps_mode != ARM_CPSMODE_INVALID) {
  r_strbuf_appendf (buf, ",\"cps_mode\":%d", x->cps_mode);
 }
 if (x->cps_flag != ARM_CPSFLAG_INVALID) {
  r_strbuf_appendf (buf, ",\"cps_flag\":%d", x->cps_flag);
 }
 if (x->cc != ARM_CC_INVALID && x->cc != ARM_CC_AL) {
  r_strbuf_appendf (buf, ",\"cc\":\"%s\"", cc_name (x->cc));
 }
 if (x->mem_barrier != ARM_MB_INVALID) {
  r_strbuf_appendf (buf, ",\"mem_barrier\":%d", x->mem_barrier - 1);
 }
 r_strbuf_append (buf, "}");
}
