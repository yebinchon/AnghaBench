
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int param ;
typedef int List ;
typedef int ExplainState ;
typedef int Bitmapset ;


 int Assert (int *) ;
 int ExplainPropertyList (char*,int *,int *) ;
 int * NIL ;
 int bms_next_member (int *,int) ;
 int * lappend (int *,int ) ;
 int pstrdup (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
show_eval_params(Bitmapset *bms_params, ExplainState *es)
{
 int paramid = -1;
 List *params = NIL;

 Assert(bms_params);

 while ((paramid = bms_next_member(bms_params, paramid)) >= 0)
 {
  char param[32];

  snprintf(param, sizeof(param), "$%d", paramid);
  params = lappend(params, pstrdup(param));
 }

 if (params)
  ExplainPropertyList("Params Evaluated", params, es);
}
