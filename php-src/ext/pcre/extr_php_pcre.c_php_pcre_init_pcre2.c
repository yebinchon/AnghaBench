
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int PCRE_JIT_STACK_MAX_SIZE ;
 int PCRE_JIT_STACK_MIN_SIZE ;
 int PHP_PCRE_PREALLOC_MDATA_SIZE ;
 scalar_t__ cctx ;
 scalar_t__ gctx ;
 scalar_t__ jit_stack ;
 scalar_t__ mctx ;
 scalar_t__ mdata ;
 scalar_t__ pcre2_compile_context_create (scalar_t__) ;
 scalar_t__ pcre2_general_context_create (int ,int ,int *) ;
 int pcre2_init_ok ;
 scalar_t__ pcre2_jit_stack_create (int ,int ,scalar_t__) ;
 scalar_t__ pcre2_match_context_create (scalar_t__) ;
 scalar_t__ pcre2_match_data_create (int ,scalar_t__) ;
 int php_pcre_free ;
 int php_pcre_malloc ;

__attribute__((used)) static void php_pcre_init_pcre2(uint8_t jit)
{
 if (!gctx) {
  gctx = pcre2_general_context_create(php_pcre_malloc, php_pcre_free, ((void*)0));
  if (!gctx) {
   pcre2_init_ok = 0;
   return;
  }
 }

 if (!cctx) {
  cctx = pcre2_compile_context_create(gctx);
  if (!cctx) {
   pcre2_init_ok = 0;
   return;
  }
 }

 if (!mctx) {
  mctx = pcre2_match_context_create(gctx);
  if (!mctx) {
   pcre2_init_ok = 0;
   return;
  }
 }
 if (!mdata) {
  mdata = pcre2_match_data_create(PHP_PCRE_PREALLOC_MDATA_SIZE, gctx);
  if (!mdata) {
   pcre2_init_ok = 0;
   return;
  }
 }

 pcre2_init_ok = 1;
}
