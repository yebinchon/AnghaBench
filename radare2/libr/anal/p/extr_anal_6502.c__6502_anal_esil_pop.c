
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int _6502_FLAGS_NZ ;
 int _6502_anal_update_flags (TYPE_1__*,int ) ;
 int r_strbuf_setf (int *,char*,char*) ;

__attribute__((used)) static void _6502_anal_esil_pop(RAnalOp *op, ut8 data0) {


 char *reg = (data0==0x28) ? "flags" : "a";

 r_strbuf_setf (&op->esil, "sp,++=,sp,0x100,+,[1],%s,=", reg);

 if (data0 == 0x68) {
  _6502_anal_update_flags (op, _6502_FLAGS_NZ);
 }
}
