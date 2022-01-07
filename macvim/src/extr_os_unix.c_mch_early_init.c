
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSTKSZ ;
 scalar_t__ alloc (int ) ;
 int check_stack_growth (char*) ;
 int get_stack_limit () ;
 int init_signal_stack () ;
 int macvim_early_init () ;
 char* signal_stack ;

void
mch_early_init()
{
}
