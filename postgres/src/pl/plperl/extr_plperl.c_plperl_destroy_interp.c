
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PerlInterpreter ;


 int FREETMPS ;
 int JMPENV_POP ;
 int JMPENV_PUSH (int) ;
 int LEAVE ;
 int PERL_EXIT_DESTRUCT_END ;
 int PERL_UNUSED_VAR (int) ;
 scalar_t__ PL_endav ;
 int PL_exit_flags ;
 int PL_minus_c ;
 int PL_scopestack_ix ;
 int call_list (int ,scalar_t__) ;
 int dJMPENV ;
 int dTHX ;

__attribute__((used)) static void
plperl_destroy_interp(PerlInterpreter **interp)
{
 if (interp && *interp)
 {
  dTHX;


  if (PL_exit_flags & PERL_EXIT_DESTRUCT_END)
  {
   dJMPENV;
   int x = 0;

   JMPENV_PUSH(x);
   PERL_UNUSED_VAR(x);
   if (PL_endav && !PL_minus_c)
    call_list(PL_scopestack_ix, PL_endav);
   JMPENV_POP;
  }
  LEAVE;
  FREETMPS;

  *interp = ((void*)0);
 }
}
