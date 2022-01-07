
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int RIDStorage ;


 char* condrets_strtok (char*,char) ;
 scalar_t__ r_id_storage_add (int *,char*,int *) ;

__attribute__((used)) static void esil_expr_atomize(RIDStorage *atoms, char *expr) {
 ut32 forget_me;
 for (
  ; !!expr && r_id_storage_add (atoms, expr, &forget_me);
  expr = condrets_strtok (expr, ',')) {
 }
}
