
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int csh ;
typedef int cs_insn ;
struct TYPE_3__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 char* ARG (int) ;
 int OPCOUNT () ;
 int r_strbuf_appendf (int *,char*,char const*,...) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void arm32mathaddsub(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, csh *handle, cs_insn *insn, int pcdelta, char (*str)[32], const char *opchar) {
 const char *dst = ARG(0);
 const char *src;
 bool noflags = 0;
 if (!strcmp (dst, "pc")) {

  noflags = 1;
 }
 if (OPCOUNT() == 3) {
  r_strbuf_appendf (&op->esil, "%s,0xffffffff,&,%s,=,", ARG (1), dst);
  src = ARG (2);
 } else {

  src = ARG (1);

 }
 r_strbuf_appendf (&op->esil, "%s,%s,%s,0xffffffff,&,%s,=", src, dst, opchar, dst);
 if (noflags) {
  return;
 }
 r_strbuf_appendf (&op->esil, ",$z,zf,:=,%s,cf,:=,vf,=,0,nf,=",
   (!strcmp (opchar, "+") ? "30,$c,31,$c,^,31,$c" : "30,$c,31,$c,^,32,$b"));
}
