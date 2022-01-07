
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PerlInterpreter ;


 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int ERRSV ;
 int FloatExceptionHandler ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_MONETARY ;
 int LC_NUMERIC ;
 int LC_TIME ;
 size_t OP_DOFILE ;
 size_t OP_REQUIRE ;
 int PERL_EXIT_DESTRUCT_END ;
 int PERL_SET_CONTEXT (int *) ;
 int PERL_SYS_INIT3 (int*,char***,char***) ;

 int PLPERL_RESTORE_LOCALE (int ,char*) ;
 int PL_exit_flags ;
 int PL_op_mask ;
 scalar_t__* PL_ppaddr ;
 int SIGFPE ;
 int dTHX ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcontext (char*) ;
 int errmsg (char*,int ) ;
 int * perl_alloc () ;
 int perl_construct (int *) ;
 scalar_t__ perl_parse (int *,int ,int,char**,int *) ;
 scalar_t__ perl_run (int *) ;
 int plperl_init_shared_libs ;
 char* plperl_on_init ;
 int plperl_opmask ;
 scalar_t__ pp_require_orig ;
 int pqsignal (int ,int ) ;
 char* pstrdup (char*) ;
 char* setlocale (int ,int *) ;
 int strip_trailing_ws (int ) ;
 int sv2cstr (int ) ;

__attribute__((used)) static PerlInterpreter *
plperl_init_interp(void)
{
 PerlInterpreter *plperl;

 static char *embedding[3 + 2] = {
  "", "-e", 128
 };
 int nargs = 3;
 if (plperl_on_init && *plperl_on_init)
 {
  embedding[nargs++] = "-e";
  embedding[nargs++] = plperl_on_init;
 }
 plperl = perl_alloc();
 if (!plperl)
  elog(ERROR, "could not allocate Perl interpreter");

 PERL_SET_CONTEXT(plperl);
 perl_construct(plperl);






 {
  dTHX;

  PL_exit_flags |= PERL_EXIT_DESTRUCT_END;






  if (!pp_require_orig)
   pp_require_orig = PL_ppaddr[OP_REQUIRE];
  else
  {
   PL_ppaddr[OP_REQUIRE] = pp_require_orig;
   PL_ppaddr[OP_DOFILE] = pp_require_orig;
  }
  if (perl_parse(plperl, plperl_init_shared_libs,
        nargs, embedding, ((void*)0)) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
      errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV))),
      errcontext("while parsing Perl initialization")));

  if (perl_run(plperl) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
      errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV))),
      errcontext("while running Perl initialization")));
 }

 return plperl;
}
