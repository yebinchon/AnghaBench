
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* proname; int * reference; } ;
typedef TYPE_1__ plperl_proc_desc ;
typedef int SV ;
typedef int Oid ;
typedef int HV ;


 int ENTER ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int ERRSV ;
 int EXTEND (int ,int) ;
 int FREETMPS ;
 int G_EVAL ;
 int G_KEEPERR ;
 int G_SCALAR ;
 int LEAVE ;
 int NAMEDATALEN ;
 int PL_sv_no ;
 scalar_t__ POPs ;
 int PUSHMARK (int ) ;
 int PUSHs (int *) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SP ;
 int SPAGAIN ;
 scalar_t__ SVt_PVCV ;
 scalar_t__ SvROK (int *) ;
 int SvRV (int *) ;
 scalar_t__ SvTRUE (int ) ;
 scalar_t__ SvTYPE (int ) ;
 int cstr2sv (char const*) ;
 int dSP ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int hv_store_string (int *,char*,int *) ;
 scalar_t__ newAV () ;
 int * newHV () ;
 int * newRV_inc (int ) ;
 int newRV_noinc (int *) ;
 int perl_call_pv (char*,int) ;
 scalar_t__ plperl_use_strict ;
 int sprintf (char*,char*,char*,int) ;
 char* strip_trailing_ws (int ) ;
 int sv2cstr (int ) ;
 int * sv_2mortal (int ) ;

__attribute__((used)) static void
plperl_create_sub(plperl_proc_desc *prodesc, const char *s, Oid fn_oid)
{
 dTHX;
 dSP;
 char subname[NAMEDATALEN + 40];
 HV *pragma_hv = newHV();
 SV *subref = ((void*)0);
 int count;

 sprintf(subname, "%s__%u", prodesc->proname, fn_oid);

 if (plperl_use_strict)
  hv_store_string(pragma_hv, "strict", (SV *) newAV());

 ENTER;
 SAVETMPS;
 PUSHMARK(SP);
 EXTEND(SP, 4);
 PUSHs(sv_2mortal(cstr2sv(subname)));
 PUSHs(sv_2mortal(newRV_noinc((SV *) pragma_hv)));






 PUSHs(&PL_sv_no);
 PUSHs(sv_2mortal(cstr2sv(s)));
 PUTBACK;






 count = perl_call_pv("PostgreSQL::InServer::mkfunc",
       G_SCALAR | G_EVAL | G_KEEPERR);
 SPAGAIN;

 if (count == 1)
 {
  SV *sub_rv = (SV *) POPs;

  if (sub_rv && SvROK(sub_rv) && SvTYPE(SvRV(sub_rv)) == SVt_PVCV)
  {
   subref = newRV_inc(SvRV(sub_rv));
  }
 }

 PUTBACK;
 FREETMPS;
 LEAVE;

 if (SvTRUE(ERRSV))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV)))));

 if (!subref)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("didn't get a CODE reference from compiling function \"%s\"",
      prodesc->proname)));

 prodesc->reference = subref;

 return;
}
