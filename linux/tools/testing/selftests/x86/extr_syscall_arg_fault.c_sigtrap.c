
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
 int sigtrap_consecutive_syscalls ;

__attribute__((used)) static void sigtrap(int sig, siginfo_t *info, void *ctx_void)
{






 ucontext_t *ctx = (ucontext_t*)ctx_void;
 unsigned short *ip = (unsigned short *)ctx->uc_mcontext.gregs[REG_IP];

 if (*ip == 0x340f || *ip == 0x050f) {

  sigtrap_consecutive_syscalls++;
  if (sigtrap_consecutive_syscalls > 3) {
   printf("[WARN]\tGot stuck single-stepping -- you probably have a KVM bug\n");
   siglongjmp(jmpbuf, 1);
  }
 } else {
  sigtrap_consecutive_syscalls = 0;
 }
}
