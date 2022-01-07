
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_4__ {int delay; int size; int jump; int esil; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int GET_BRA_OFFSET (int ) ;
 int R_ANAL_OP_TYPE_CALL ;
 int disarm_12bit_offset (TYPE_1__*,int ) ;
 int r_strbuf_setf (int *,char*,int ) ;

__attribute__((used)) static int bsr(RAnal* anal, RAnalOp* op, ut16 code) {

 op->type = R_ANAL_OP_TYPE_CALL;
 op->jump = disarm_12bit_offset (op, GET_BRA_OFFSET (code));
 op->delay = 1;
 r_strbuf_setf (&op->esil, "1,SETD,pc,2,+,pr,=,0x%x,pc,=", op->jump);
 return op->size;
}
