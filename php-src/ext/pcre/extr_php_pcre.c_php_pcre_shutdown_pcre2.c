
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cctx ;
 int * gctx ;
 int * jit_stack ;
 int * mctx ;
 int * mdata ;
 int pcre2_compile_context_free (int *) ;
 int pcre2_general_context_free (int *) ;
 scalar_t__ pcre2_init_ok ;
 int pcre2_jit_stack_free (int *) ;
 int pcre2_match_context_free (int *) ;
 int pcre2_match_data_free (int *) ;

__attribute__((used)) static void php_pcre_shutdown_pcre2(void)
{
 if (gctx) {
  pcre2_general_context_free(gctx);
  gctx = ((void*)0);
 }

 if (cctx) {
  pcre2_compile_context_free(cctx);
  cctx = ((void*)0);
 }

 if (mctx) {
  pcre2_match_context_free(mctx);
  mctx = ((void*)0);
 }
 if (mdata) {
  pcre2_match_data_free(mdata);
  mdata = ((void*)0);
 }

 pcre2_init_ok = 0;
}
