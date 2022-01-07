
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RAnalEsil ;


 int free (char*) ;
 int r_anal_esil_get_parm (int *,char*,int *) ;
 char* r_anal_esil_pop (int *) ;
 int r_anal_esil_pushnum (int *,int ) ;

__attribute__((used)) static bool esil_num(RAnalEsil *esil) {
 char *dup_me;
 ut64 dup;
 if (!esil) {
  return 0;
 }
 if (!(dup_me = r_anal_esil_pop (esil))) {
  return 0;
 }
 if (!r_anal_esil_get_parm (esil, dup_me, &dup)) {
  free (dup_me);
  return 0;
 }
 free (dup_me);
 return r_anal_esil_pushnum (esil, dup);
}
