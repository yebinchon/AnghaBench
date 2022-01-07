
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int _6502_FLAGS_B ;
 int _6502_FLAGS_C ;
 int _6502_FLAGS_N ;
 int _6502_FLAGS_Z ;
 int r_strbuf_append (int *,char*) ;

__attribute__((used)) static void _6502_anal_update_flags(RAnalOp *op, int flags) {

 if (flags & _6502_FLAGS_B) {
  r_strbuf_append (&op->esil, ",9,$b,C,:=");
 }
 if (flags & _6502_FLAGS_C) {
  r_strbuf_append (&op->esil, ",7,$c,C,:=");
 }
 if (flags & _6502_FLAGS_Z) {
  r_strbuf_append (&op->esil, ",$z,Z,:=");
 }
 if (flags & _6502_FLAGS_N) {
  r_strbuf_append (&op->esil, ",7,$s,N,:=");
 }
}
