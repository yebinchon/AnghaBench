
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int reference; } ;
typedef TYPE_1__ plperl_proc_desc ;
struct TYPE_8__ {TYPE_3__* tg_trigger; } ;
typedef TYPE_2__ TriggerData ;
struct TYPE_9__ {int tgnargs; int * tgargs; } ;
typedef TYPE_3__ Trigger ;
struct TYPE_10__ {scalar_t__ context; } ;
typedef int SV ;
typedef TYPE_4__* FunctionCallInfo ;


 int ENTER ;
 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int ERRSV ;
 int EXTEND (int ,int) ;
 int FREETMPS ;
 int G_EVAL ;
 int G_SCALAR ;
 int LEAVE ;
 int POPs ;
 int PUSHMARK (int ) ;
 int PUSHs (int ) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SPAGAIN ;
 scalar_t__ SvTRUE (int ) ;
 int cstr2sv (int ) ;
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
 int sv_2mortal (int ) ;
 int sv_setsv (int *,int *) ;

__attribute__((used)) static SV *
plperl_call_perl_trigger_func(plperl_proc_desc *desc, FunctionCallInfo fcinfo,
         SV *td)
{
 dTHX;
 dSP;
 SV *retval,
      *TDsv;
 int i,
    count;
 Trigger *tg_trigger = ((TriggerData *) fcinfo->context)->tg_trigger;

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
 EXTEND(sp, tg_trigger->tgnargs);

 for (i = 0; i < tg_trigger->tgnargs; i++)
  PUSHs(sv_2mortal(cstr2sv(tg_trigger->tgargs[i])));
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

 PUTBACK;
 FREETMPS;
 LEAVE;

 return retval;
}
