
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_flags; } ;
typedef TYPE_1__ ucontext_t ;
typedef int siginfo_t ;


 int UC_STRICT_RESTORE_SS ;
 int nerrs ;
 int printf (char*) ;
 scalar_t__* ssptr (TYPE_1__*) ;

__attribute__((used)) static void sigusr2(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;

 if (!(ctx->uc_flags & UC_STRICT_RESTORE_SS)) {
  printf("[FAIL]\traise(2) didn't set UC_STRICT_RESTORE_SS\n");
  nerrs++;
  return;
 }

 ctx->uc_flags &= ~UC_STRICT_RESTORE_SS;
 *ssptr(ctx) = 0;


}
