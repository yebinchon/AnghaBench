
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int pc; } ;
struct TYPE_5__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int free (char*) ;
 char* r_8051_disas (int ,int const*,int,int*) ;
 int r_strbuf_set (int *,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 int dlen = 0;
 char *s = r_8051_disas (a->pc, buf, len, &dlen);
 if (dlen < 0) {
  dlen = 0;
 }
 if (s) {
  r_strbuf_set (&op->buf_asm, s);
  free (s);
 }
 op->size = dlen;
 return dlen;
}
