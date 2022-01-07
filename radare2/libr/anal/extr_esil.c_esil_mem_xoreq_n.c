
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RAnalEsil ;


 int ERR (char*) ;
 int esil_peek_n (int *,int) ;
 int esil_poke_n (int *,int) ;
 int free (char*) ;
 scalar_t__ r_anal_esil_get_parm (int *,char*,int *) ;
 char* r_anal_esil_pop (int *) ;
 int r_anal_esil_push (int *,char*) ;
 int r_anal_esil_pushnum (int *,int ) ;

__attribute__((used)) static bool esil_mem_xoreq_n(RAnalEsil *esil, int bits) {
 bool ret = 0;
 ut64 s, d;
 char *dst = r_anal_esil_pop (esil);
 char *src0 = r_anal_esil_pop (esil);
 char *src1 = ((void*)0);
 if (src0 && r_anal_esil_get_parm (esil, src0, &s)) {
  r_anal_esil_push (esil, dst);
  ret = (!!esil_peek_n (esil, bits));
  src1 = r_anal_esil_pop (esil);
  if (src1 && r_anal_esil_get_parm (esil, src1, &d)) {
   d ^= s;
   r_anal_esil_pushnum (esil, d);
   r_anal_esil_push (esil, dst);
   ret &= (!!esil_poke_n (esil, bits));
  } else {
   ret = 0;
  }
 }
 if (!ret) {
  ERR ("esil_mem_xoreq_n: invalid parameters");
 }
 free (dst);
 free (src0);
 free (src1);
 return ret;
}
