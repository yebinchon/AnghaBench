
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 int SIG_IGN ;
 int pqsignal (int ,int ) ;

void
disable_sigpipe_trap(void)
{

 pqsignal(SIGPIPE, SIG_IGN);

}
