
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int setup_sigsegv_handler () ;
 int sig_chld ;
 int signal (int ,int *) ;

void setup_handlers(void)
{
 signal(SIGCHLD, &sig_chld);
 setup_sigsegv_handler();
}
