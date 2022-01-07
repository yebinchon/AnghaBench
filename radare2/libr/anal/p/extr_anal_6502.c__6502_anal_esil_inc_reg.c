
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
 int r_strbuf_setf (int *,char*,char*,char*,char*) ;

__attribute__((used)) static void _6502_anal_esil_inc_reg(RAnalOp *op, ut8 data0, char* sign) {
 char* reg = ((void*)0);

 switch(data0) {
 case 0xe8:
 case 0xca:
  reg = "x";
  break;
 case 0xc8:
 case 0x88:
  reg = "y";
  break;
 }
 r_strbuf_setf (&op->esil, "%s,%s%s=", reg, sign, sign);
 _6502_anal_update_flags (op, _6502_FLAGS_NZ);
}
