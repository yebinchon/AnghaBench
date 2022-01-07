
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * si_addr; } ;
typedef TYPE_1__ siginfo_t ;


 int * sigbus_addr ;
 int sigbus_jmp ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void sigbus_handler(int sig, siginfo_t *info, void *ucontex)
{
 (void)sig;
 (void)ucontex;
 sigbus_addr = info ? info->si_addr : ((void*)0);
 siglongjmp(sigbus_jmp, 1);
}
