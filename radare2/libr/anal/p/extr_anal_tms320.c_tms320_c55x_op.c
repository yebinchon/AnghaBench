
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_6__ {char* syntax; } ;
struct TYPE_5__ {int size; int type; scalar_t__ delay; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_TYPE_ACMP ;
 int R_ANAL_OP_TYPE_CALL ;
 int R_ANAL_OP_TYPE_CCALL ;
 int R_ANAL_OP_TYPE_CJMP ;
 int R_ANAL_OP_TYPE_CMP ;
 int R_ANAL_OP_TYPE_CRET ;
 int R_ANAL_OP_TYPE_JMP ;
 int R_ANAL_OP_TYPE_MOV ;
 int R_ANAL_OP_TYPE_NOP ;
 int R_ANAL_OP_TYPE_NULL ;
 int R_ANAL_OP_TYPE_POP ;
 int R_ANAL_OP_TYPE_PUSH ;
 int R_ANAL_OP_TYPE_RET ;
 int R_ANAL_OP_TYPE_SWI ;
 int R_ANAL_OP_TYPE_TRAP ;
 int R_ANAL_OP_TYPE_UCALL ;
 int R_ANAL_OP_TYPE_UJMP ;
 int R_ANAL_OP_TYPE_UNK ;
 int R_ANAL_OP_TYPE_UPUSH ;
 TYPE_2__ engine ;
 scalar_t__ match (char const*,char*) ;
 scalar_t__ strstr (char const*,char*) ;
 int tms320_dasm (TYPE_2__*,int const*,int) ;

int tms320_c55x_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len) {
 const char * str = engine.syntax;

 op->delay = 0;
 op->size = tms320_dasm(&engine, buf, len);
 op->type = R_ANAL_OP_TYPE_NULL;

 str = strstr(str, "||") ? str + 3 : str;

 if (match(str, "B ")) {
  op->type = R_ANAL_OP_TYPE_JMP;
  if (match (str, "B AC")) {
   op->type = R_ANAL_OP_TYPE_UJMP;
  }
 } else if (match(str, "BCC ") || match(str, "BCCU ")) {
  op->type = R_ANAL_OP_TYPE_CJMP;
 } else if (match(str, "CALL ")) {
  op->type = R_ANAL_OP_TYPE_CALL;
  if (match (str, "CALL AC")) {
   op->type = R_ANAL_OP_TYPE_UCALL;
  }
 } else if (match(str, "CALLCC ")) {
  op->type = R_ANAL_OP_TYPE_CCALL;
 } else if (match(str, "RET")) {
  op->type = R_ANAL_OP_TYPE_RET;
  if (match (str, "RETCC")) {
   op->type = R_ANAL_OP_TYPE_CRET;
  }
 } else if (match(str, "MOV ")) {
  op->type = R_ANAL_OP_TYPE_MOV;
 } else if (match(str, "PSHBOTH ")) {
  op->type = R_ANAL_OP_TYPE_UPUSH;
 } else if (match(str, "PSH ")) {
  op->type = R_ANAL_OP_TYPE_PUSH;
 } else if (match(str, "POPBOTH ") || match(str, "POP ")) {
  op->type = R_ANAL_OP_TYPE_POP;
 } else if (match(str, "CMP ")) {
  op->type = R_ANAL_OP_TYPE_CMP;
 } else if (match(str, "CMPAND ")) {
  op->type = R_ANAL_OP_TYPE_ACMP;
 } else if (match(str, "NOP")) {
  op->type = R_ANAL_OP_TYPE_NOP;
 } else if (match(str, "INTR ")) {
  op->type = R_ANAL_OP_TYPE_SWI;
 } else if (match(str, "TRAP ")) {
  op->type = R_ANAL_OP_TYPE_TRAP;
 } else if (match(str, "INVALID")) {
  op->type = R_ANAL_OP_TYPE_UNK;
 }

 return op->size;
}
