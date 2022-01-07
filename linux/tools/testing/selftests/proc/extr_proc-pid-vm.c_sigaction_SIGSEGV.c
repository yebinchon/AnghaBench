
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int _exit (int) ;

__attribute__((used)) static void sigaction_SIGSEGV(int _, siginfo_t *__, void *___)
{
 _exit(1);
}
