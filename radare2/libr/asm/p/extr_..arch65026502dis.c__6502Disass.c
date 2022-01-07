
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef int ut64 ;
struct TYPE_6__ {scalar_t__ const op; int len; scalar_t__ const name; } ;
struct TYPE_5__ {int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;


 TYPE_3__* ops ;
 int r_strbuf_set (int *,char const*) ;
 char* sdb_fmt (char*,scalar_t__ const) ;
 int snesDisass (int,int,int ,TYPE_1__*,scalar_t__ const*,int ) ;

__attribute__((used)) static int _6502Disass (ut64 pc, RAsmOp *op, const ut8 *buf, ut64 len) {
 int i;
 for (i=0; ops[i].name != ((void*)0); i++) {
  if (ops[i].op == buf[0]) {
   const char *buf_asm = "invalid";
   int len = ops[i].len;
   switch (ops[i].len) {
   case 1:
    buf_asm = sdb_fmt ("%s", ops[i].name);
    break;
   case 2:
    if (len > 1) {
     buf_asm = sdb_fmt (ops[i].name, buf[1]);
    } else {
     buf_asm = "truncated";
     len = -1;
    }
    break;
   case 3:
    if (len > 2) {
     buf_asm = sdb_fmt (ops[i].name, buf[1] + 0x100 * buf[2]);
    } else {
     buf_asm = "truncated";
     len = -1;
    }
    break;
   case 4:
    if (len > 3) {
     buf_asm = sdb_fmt (ops[i].name, buf[1]+0x100*buf[2]+0x10000*buf[3]);
    } else {
     buf_asm = "truncated";
     len = -1;
    }
    break;
   default:
    goto beach;
   }
   r_strbuf_set (&op->buf_asm, buf_asm);
   return len;
  }
 }
beach:
 return snesDisass (1, 1, pc, op, buf, len);
}
