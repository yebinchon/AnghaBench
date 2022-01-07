
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int jmpbuf ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void sigsegv(int sig, siginfo_t *info, void *ctx_void)
{
 siglongjmp(jmpbuf, 1);
}
