
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef void* ut64 ;
typedef int ut16 ;
struct TYPE_9__ {int mask; int selector; int cycles; int size; int (* handler ) (int *,TYPE_1__*,int const*,int,int*,int *) ;int type; } ;
struct TYPE_8__ {int cycles; int size; int nopcode; int esil; void* val; void* ptr; void* jump; void* fail; void* addr; int type; int family; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;
typedef TYPE_2__ OPCODE_DESC ;
typedef int CPU_MODEL ;


 int R_ANAL_OP_FAMILY_UNKNOWN ;
 int R_ANAL_OP_TYPE_UNK ;
 void* UT64_MAX ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__* opcodes ;
 char* r_strbuf_get (int *) ;
 int r_strbuf_init (int *) ;
 int r_strbuf_set (int *,char*) ;
 int r_strbuf_setf (int *,char*) ;
 int strlen (char*) ;
 int stub1 (int *,TYPE_1__*,int const*,int,int*,int *) ;

__attribute__((used)) static OPCODE_DESC* avr_op_analyze(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, CPU_MODEL *cpu) {
 OPCODE_DESC *opcode_desc;
 if (len < 2) {
  return ((void*)0);
 }
 ut16 ins = (buf[1] << 8) | buf[0];
 int fail;
 char *t;


 memset (op, 0, sizeof (RAnalOp));
 op->ptr = UT64_MAX;
 op->val = UT64_MAX;
 op->jump = UT64_MAX;
 r_strbuf_init (&op->esil);


 for (opcode_desc = opcodes; opcode_desc->handler; opcode_desc++) {
  if ((ins & opcode_desc->mask) == opcode_desc->selector) {
   fail = 0;


   op->cycles = opcode_desc->cycles;
   op->size = opcode_desc->size;
   op->type = opcode_desc->type;
   op->jump = UT64_MAX;
   op->fail = UT64_MAX;

   op->addr = addr;


   r_strbuf_setf (&op->esil, "");


   opcode_desc->handler (anal, op, buf, len, &fail, cpu);
   if (fail) {
    goto INVALID_OP;
   }
   if (op->cycles <= 0) {

    opcode_desc->cycles = 2;
   }
   op->nopcode = (op->type == R_ANAL_OP_TYPE_UNK);


   t = r_strbuf_get (&op->esil);
   if (t && strlen (t) > 1) {
    t += strlen (t) - 1;
    if (*t == ',') {
     *t = '\0';
    }
   }

   return opcode_desc;
  }
 }


 if ((ins & 0xff00) == 0xff00 && (ins & 0xf) > 7) {
  goto INVALID_OP;
 }

INVALID_OP:


 op->family = R_ANAL_OP_FAMILY_UNKNOWN;
 op->type = R_ANAL_OP_TYPE_UNK;
 op->addr = addr;
 op->fail = UT64_MAX;
 op->jump = UT64_MAX;
 op->ptr = UT64_MAX;
 op->val = UT64_MAX;
 op->nopcode = 1;
 op->cycles = 1;
 op->size = 2;


 r_strbuf_set (&op->esil, "1,$");

 return ((void*)0);
}
