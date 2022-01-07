
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Control_Block {int tcpstate; int port_them; int ip_them; } ;


 int LOGip (int,int ,int ,char*,int ,char const*) ;
 int state_to_string (int ) ;

__attribute__((used)) static void
LOGSEND(struct TCP_Control_Block *tcb, const char *what)
{
    if (tcb == ((void*)0))
        return;
    LOGip(5, tcb->ip_them, tcb->port_them, "=%s : --->> %s                  \n",
          state_to_string(tcb->tcpstate),
          what);
}
