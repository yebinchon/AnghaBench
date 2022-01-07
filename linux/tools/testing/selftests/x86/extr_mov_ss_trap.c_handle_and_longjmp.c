
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
 int printf (char*,char*,unsigned long) ;
 int siglongjmp (int ,int) ;
 char** signames ;

__attribute__((used)) static void handle_and_longjmp(int sig, siginfo_t *si, void *ctx_void)
{
 ucontext_t *ctx = ctx_void;

 printf("\tGot %s with RIP=%lx\n", signames[sig],
        (unsigned long)ctx->uc_mcontext.gregs[REG_IP]);

 siglongjmp(jmpbuf, 1);
}
