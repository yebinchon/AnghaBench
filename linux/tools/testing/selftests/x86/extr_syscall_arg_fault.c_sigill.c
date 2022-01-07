
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* gregs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;


 size_t REG_IP ;
 int jmpbuf ;
 int printf (char*) ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void sigill(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;
 unsigned short *ip = (unsigned short *)ctx->uc_mcontext.gregs[REG_IP];

 if (*ip == 0x0b0f) {

  printf("[OK]\tSYSCALL returned normally\n");
 } else {
  printf("[SKIP]\tIllegal instruction\n");
 }
 siglongjmp(jmpbuf, 1);
}
