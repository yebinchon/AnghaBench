
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * j; int * anal; } ;
typedef int RAnal ;
typedef int PJ ;
typedef TYPE_1__ ListJsonCtx ;


 int pj_a (int *) ;
 int pj_end (int *) ;
 int pj_free (int *) ;
 int * pj_new () ;
 int pj_string (int *) ;
 int r_anal_class_foreach (int *,int ,TYPE_1__*) ;
 int r_anal_class_list_json_cb ;
 int r_cons_printf (char*,int ) ;

__attribute__((used)) static void r_anal_class_list_json(RAnal *anal) {
 PJ *j = pj_new ();
 if (!j) {
  return;
 }
 pj_a (j);

 ListJsonCtx ctx;
 ctx.anal = anal;
 ctx.j = j;
 r_anal_class_foreach (anal, r_anal_class_list_json_cb, &ctx);

 pj_end (j);
 r_cons_printf ("%s\n", pj_string (j));
 pj_free (j);
}
