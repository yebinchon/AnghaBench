
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int exit (int ) ;

__attribute__((used)) static void seg_signal_handler(int signo, siginfo_t *si, void *uc)
{

 exit(0);
}
