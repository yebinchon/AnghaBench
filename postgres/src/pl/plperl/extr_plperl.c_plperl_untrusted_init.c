
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int ERRSV ;
 int FALSE ;
 scalar_t__ SvTRUE (int ) ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcontext (char*) ;
 int errmsg (char*,int ) ;
 int eval_pv (scalar_t__*,int ) ;
 scalar_t__* plperl_on_plperlu_init ;
 int strip_trailing_ws (int ) ;
 int sv2cstr (int ) ;

__attribute__((used)) static void
plperl_untrusted_init(void)
{
 dTHX;




 if (plperl_on_plperlu_init && *plperl_on_plperlu_init)
 {
  eval_pv(plperl_on_plperlu_init, FALSE);
  if (SvTRUE(ERRSV))
   ereport(ERROR,
     (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
      errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV))),
      errcontext("while executing plperl.on_plperlu_init")));
 }
}
