
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int handle_sigint ;
 int pqsignal (int ,int ) ;

void
setup_cancel_handler(void)
{
 pqsignal(SIGINT, handle_sigint);
}
