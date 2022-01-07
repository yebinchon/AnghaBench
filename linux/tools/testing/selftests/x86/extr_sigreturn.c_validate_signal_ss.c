
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uc_flags; } ;
typedef TYPE_1__ ucontext_t ;


 int UC_SIGCONTEXT_SS ;
 int UC_STRICT_RESTORE_SS ;
 int cs_bitness (int ) ;
 int * csptr (TYPE_1__*) ;
 scalar_t__ is_valid_ss (unsigned short) ;
 int nerrs ;
 int printf (char*,...) ;
 unsigned short* ssptr (TYPE_1__*) ;

__attribute__((used)) static void validate_signal_ss(int sig, ucontext_t *ctx)
{

 bool was_64bit = (cs_bitness(*csptr(ctx)) == 64);

 if (!(ctx->uc_flags & UC_SIGCONTEXT_SS)) {
  printf("[FAIL]\tUC_SIGCONTEXT_SS was not set\n");
  nerrs++;





  return;
 }


 if (!!(ctx->uc_flags & UC_STRICT_RESTORE_SS) != was_64bit) {
  printf("[FAIL]\tUC_STRICT_RESTORE_SS was wrong in signal %d\n",
         sig);
  nerrs++;
 }

 if (is_valid_ss(*ssptr(ctx))) {





  unsigned short hw_ss;
  asm ("mov %%ss, %0" : "=rm" (hw_ss));
  if (hw_ss != *ssptr(ctx)) {
   printf("[FAIL]\tHW SS didn't match saved SS\n");
   nerrs++;
  }
 }

}
