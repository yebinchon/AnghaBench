
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int exit_from_pong ;

void usr1_signal_handler(int signo, siginfo_t *si, void *not_used)
{

 exit_from_pong = 1;
}
