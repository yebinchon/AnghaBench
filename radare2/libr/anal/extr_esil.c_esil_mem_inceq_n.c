
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef void* ut64 ;
struct TYPE_9__ {int lastsz; void* cur; void* old; } ;
typedef TYPE_1__ RAnalEsil ;


 int ERR (char*) ;
 int esil_peek_n (TYPE_1__*,int) ;
 int esil_poke_n (TYPE_1__*,int) ;
 int free (char*) ;
 scalar_t__ r_anal_esil_get_parm (TYPE_1__*,char*,void**) ;
 char* r_anal_esil_pop (TYPE_1__*) ;
 int r_anal_esil_push (TYPE_1__*,char*) ;
 int r_anal_esil_pushnum (TYPE_1__*,void*) ;

__attribute__((used)) static bool esil_mem_inceq_n(RAnalEsil *esil, int bits) {
 bool ret = 0;
 ut64 s;
 char *off = r_anal_esil_pop (esil);
 char *src = ((void*)0);
 if (off) {
  r_anal_esil_push (esil, off);
  ret = (!!esil_peek_n (esil, bits));
  src = r_anal_esil_pop (esil);
  if (src && r_anal_esil_get_parm (esil, src, &s)) {
   esil->old = s;
   s++;
   esil->cur = s;
   esil->lastsz = bits;
   r_anal_esil_pushnum (esil, s);
   r_anal_esil_push (esil, off);
   ret &= (!!esil_poke_n (esil, bits));
  } else {
   ret = 0;
  }
 }
 if (!ret) {
  ERR ("esil_mem_inceq_n: invalid parameters");
 }
 free (src);
 free (off);
 return ret;
}
