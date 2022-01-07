
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RAnalEsil ;


 int isnum (int *,char const*,int *) ;
 int r_anal_esil_reg_read (int *,char const*,int *,int *) ;

__attribute__((used)) static bool isregornum(RAnalEsil *esil, const char *str, ut64 *num) {
 if (!r_anal_esil_reg_read (esil, str, num, ((void*)0))) {
  if (!isnum (esil, str, num)) {
   return 0;
  }
 }
 return 1;
}
