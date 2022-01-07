
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 scalar_t__ COUNT_MAX ;
 scalar_t__ count ;
 int init_context ;
 int main_context ;
 int setcontext (int *) ;

void seg_signal_handler(int signo, siginfo_t *si, void *uc)
{
 if (count == COUNT_MAX) {

  setcontext(&main_context);
 }

 count++;


 setcontext(&init_context);
}
