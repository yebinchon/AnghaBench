
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int jump_target_set; int jump_target; } ;
typedef TYPE_1__ RAnalEsil ;


 int ERR (char*) ;
 int R_FREE (char*) ;
 int free (char*) ;
 scalar_t__ r_anal_esil_get_parm (TYPE_1__*,char*,int *) ;
 char* r_anal_esil_pop (TYPE_1__*) ;

__attribute__((used)) static bool esil_set_jump_target(RAnalEsil *esil) {
 bool ret = 0;
 ut64 s;
 char *src = r_anal_esil_pop (esil);
 if (src && r_anal_esil_get_parm (esil, src, &s)) {
  esil->jump_target = s;
  esil->jump_target_set = 1;
  ret = 1;
 } else {
  R_FREE (src);
  ERR ("esil_set_jump_target: empty stack");
 }
 free (src);
 return ret;
}
