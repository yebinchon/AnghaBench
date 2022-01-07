
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
 int r_strbuf_setf (int *,char*,char const*,char const*) ;

__attribute__((used)) static void _6502_anal_esil_mov(RAnalOp *op, ut8 data0) {
 const char* src="unk";
 const char* dst="unk";
 switch(data0) {
 case 0xaa:
  src="a";
  dst="x";
  break;
 case 0x8a:
  src="x";
  dst="a";
  break;
 case 0xa8:
  src="a";
  dst="y";
  break;
 case 0x98:
  src="y";
  dst="a";
  break;
 case 0x9a:
  src="x";
  dst="sp";
  break;
 case 0xba:
  src="sp";
  dst="x";
  break;
 default:

  break;
 }
 r_strbuf_setf (&op->esil, "%s,%s,=",src,dst);


 if (data0 != 0x9a) {
  _6502_anal_update_flags (op, _6502_FLAGS_NZ);
 }
}
