
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int r_strbuf_setf (int *,char*,char*) ;

__attribute__((used)) static void _6502_anal_esil_push(RAnalOp *op, ut8 data0) {


 char *reg = (data0==0x08) ? "flags" : "a";

 r_strbuf_setf (&op->esil, "%s,sp,0x100,+,=[1],sp,--=", reg);
}
