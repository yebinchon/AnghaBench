
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reference; } ;
typedef TYPE_1__ plperl_proc_desc ;
typedef int SV ;
typedef int FunctionCallInfo ;


 int ENTER ;
 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int ERRSV ;
 int FREETMPS ;
 int G_EVAL ;
 int G_SCALAR ;
 int LEAVE ;
 int POPs ;
 int PUSHMARK (int ) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SPAGAIN ;
 scalar_t__ SvTRUE (int ) ;
 int dSP ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int * get_sv (char*,int ) ;
 int * newSVsv (int ) ;
 int perl_call_sv (int ,int) ;
 int save_item (int *) ;
 int sp ;
 int strip_trailing_ws (int ) ;
 int sv2cstr (int ) ;
 int sv_setsv (int *,int *) ;

__attribute__((used)) static void
plperl_call_perl_event_trigger_func(plperl_proc_desc *desc,
         FunctionCallInfo fcinfo,
         SV *td)
{
 dTHX;
 dSP;
 SV *retval,
      *TDsv;
 int count;

 ENTER;
 SAVETMPS;

 TDsv = get_sv("main::_TD", 0);
 if (!TDsv)
  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("couldn't fetch $_TD")));

 save_item(TDsv);
 sv_setsv(TDsv, td);

 PUSHMARK(sp);
 PUTBACK;


 count = perl_call_sv(desc->reference, G_SCALAR | G_EVAL);

 SPAGAIN;

 if (count != 1)
 {
  PUTBACK;
  FREETMPS;
  LEAVE;
  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("didn't get a return item from trigger function")));
 }

 if (SvTRUE(ERRSV))
 {
  (void) POPs;
  PUTBACK;
  FREETMPS;
  LEAVE;

  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV)))));
 }

 retval = newSVsv(POPs);
 (void) retval;

 PUTBACK;
 FREETMPS;
 LEAVE;

 return;
}
