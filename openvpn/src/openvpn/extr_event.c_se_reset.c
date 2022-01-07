
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_set {int maxfd; int ** args; int writefds; int readfds; int fast; } ;
struct event_set {int dummy; } ;


 int ASSERT (int ) ;
 int D_EVENT_WAIT ;
 int FD_ZERO (int *) ;
 int dmsg (int ,char*) ;

__attribute__((used)) static void
se_reset(struct event_set *es)
{
    struct se_set *ses = (struct se_set *) es;
    int i;
    ASSERT(ses->fast);

    dmsg(D_EVENT_WAIT, "SE_RESET");

    FD_ZERO(&ses->readfds);
    FD_ZERO(&ses->writefds);
    for (i = 0; i <= ses->maxfd; ++i)
    {
        ses->args[i] = ((void*)0);
    }
    ses->maxfd = -1;
}
