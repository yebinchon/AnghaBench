
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_9__ {scalar_t__ trap_code; int trap; } ;
typedef TYPE_1__ RAnalEsil ;


 int ERR (char*) ;
 int R_ANAL_TRAP_DIVBYZERO ;
 int esil_peek_n (TYPE_1__*,int) ;
 int esil_poke_n (TYPE_1__*,int) ;
 int free (char*) ;
 scalar_t__ r_anal_esil_get_parm (TYPE_1__*,char*,int*) ;
 char* r_anal_esil_pop (TYPE_1__*) ;
 int r_anal_esil_push (TYPE_1__*,char*) ;
 int r_anal_esil_pushnum (TYPE_1__*,int) ;

__attribute__((used)) static bool esil_mem_modeq_n(RAnalEsil *esil, int bits) {
 bool ret = 0;
 ut64 s, d;
 char *dst = r_anal_esil_pop (esil);
 char *src0 = r_anal_esil_pop (esil);
 char *src1 = ((void*)0);
 if (src0 && r_anal_esil_get_parm (esil, src0, &s)) {
  if (s == 0) {
   ERR ("esil_mem_modeq4: Division by zero!");
   esil->trap = R_ANAL_TRAP_DIVBYZERO;
   esil->trap_code = 0;
  } else {
   r_anal_esil_push (esil, dst);
   ret = (!!esil_peek_n (esil, bits));
   src1 = r_anal_esil_pop (esil);
   if (src1 && r_anal_esil_get_parm (esil, src1, &d) && s >= 1) {
    r_anal_esil_pushnum (esil, d % s);
    d = d % s;
    r_anal_esil_pushnum (esil, d);
    r_anal_esil_push (esil, dst);
    ret &= (!!esil_poke_n (esil, bits));
   } else {
    ret = 0;
   }
  }
 }
 if (!ret) {
  ERR ("esil_mem_modeq_n: invalid parameters");
 }
 free (dst);
 free (src0);
 free (src1);
 return ret;
}
