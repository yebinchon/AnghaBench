
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;
typedef int I32 ;
typedef int HV ;


 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int ERRSV ;
 int FALSE ;
 int GV_ADDWARN ;
 int GvCV (int *) ;
 int GvCV_set (int *,int *) ;
 size_t OP_DOFILE ;
 size_t OP_REQUIRE ;
 char* PLC_TRUSTED ;
 int PL_op_mask ;
 int * PL_ppaddr ;
 int * PL_stashcache ;
 int PL_sub_generation ;
 int SvREFCNT_dec (int ) ;
 scalar_t__ SvTRUE (int ) ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcontext (char*) ;
 int errmsg (char*,int ) ;
 int eval_pv (char*,int ) ;
 int * gv_stashpv (char*,int ) ;
 int hv_clear (int *) ;
 int hv_iterinit (int *) ;
 int * hv_iternextsv (int *,char**,int *) ;
 int isGV_with_GP (int *) ;
 char* plperl_on_plperl_init ;
 int plperl_opmask ;
 int pp_require_orig ;
 int pp_require_safe ;
 int strip_trailing_ws (int ) ;
 int sv2cstr (int ) ;

__attribute__((used)) static void
plperl_trusted_init(void)
{
 dTHX;
 HV *stash;
 SV *sv;
 char *key;
 I32 klen;


 PL_ppaddr[OP_REQUIRE] = pp_require_orig;
 PL_ppaddr[OP_DOFILE] = pp_require_orig;

 eval_pv(PLC_TRUSTED, FALSE);
 if (SvTRUE(ERRSV))
  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV))),
     errcontext("while executing PLC_TRUSTED")));






 eval_pv("my $a=chr(0x100); return $a =~ /\\xa9/i", FALSE);
 if (SvTRUE(ERRSV))
  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV))),
     errcontext("while executing utf8fix")));






 PL_ppaddr[OP_REQUIRE] = pp_require_safe;
 PL_ppaddr[OP_DOFILE] = pp_require_safe;





 PL_op_mask = plperl_opmask;


 stash = gv_stashpv("DynaLoader", GV_ADDWARN);
 hv_iterinit(stash);
 while ((sv = hv_iternextsv(stash, &key, &klen)))
 {
  if (!isGV_with_GP(sv) || !GvCV(sv))
   continue;
  SvREFCNT_dec(GvCV(sv));
  GvCV_set(sv, ((void*)0));
 }
 hv_clear(stash);


 ++PL_sub_generation;
 hv_clear(PL_stashcache);




 if (plperl_on_plperl_init && *plperl_on_plperl_init)
 {
  eval_pv(plperl_on_plperl_init, FALSE);

  if (SvTRUE(ERRSV))
   ereport(ERROR,
     (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
      errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV))),
      errcontext("while executing plperl.on_plperl_init")));
 }
}
