
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RAnalEsil ;


 int free (char*) ;
 int isregornum (int *,char*,int *) ;
 char* r_anal_esil_pop (int *) ;

__attribute__((used)) static bool popRN(RAnalEsil *esil, ut64 *n) {
 char *str = r_anal_esil_pop (esil);
 if (str) {
  bool ret = isregornum (esil, str, n);
  free (str);
  return ret;
 }
 return 0;
}
