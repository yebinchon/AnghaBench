
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RAnalEsil ;


 int free (char*) ;
 int r_anal_esil_get_parm (int *,char*,int *) ;
 char* r_anal_esil_pop (int *) ;

__attribute__((used)) static int __esil_pop_argument(RAnalEsil *esil, ut64 *v) {
 char *t = r_anal_esil_pop (esil);
 if (!t || !r_anal_esil_get_parm (esil, t, v)) {
  free (t);
  return 0;
 }
 free (t);
 return 1;
}
