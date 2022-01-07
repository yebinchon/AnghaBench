
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int jump; int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int r_strbuf_setf (int *,char*,char*,int) ;

__attribute__((used)) static void _6502_anal_esil_ccall(RAnalOp *op, ut8 data0) {
 char *flag;
 switch (data0) {
 case 0x10:
  flag = "N,!";
  break;
 case 0x30:
  flag = "N";
  break;
 case 0x50:
  flag = "V,!";
  break;
 case 0x70:
  flag = "V";
  break;
 case 0x90:
  flag = "C,!";
  break;
 case 0xb0:
  flag = "C";
  break;
 case 0xd0:
  flag = "Z,!";
  break;
 case 0xf0:
  flag = "Z";
  break;
 default:

  flag = "unk";
  break;
 }
 r_strbuf_setf (&op->esil, "%s,?{,0x%04x,pc,=,}", flag, (op->jump & 0xffff));
}
