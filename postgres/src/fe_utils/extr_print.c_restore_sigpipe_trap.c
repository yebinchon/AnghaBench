
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 int SIG_DFL ;
 int SIG_IGN ;
 scalar_t__ always_ignore_sigpipe ;
 int pqsignal (int ,int ) ;

void
restore_sigpipe_trap(void)
{

 pqsignal(SIGPIPE, always_ignore_sigpipe ? SIG_IGN : SIG_DFL);

}
