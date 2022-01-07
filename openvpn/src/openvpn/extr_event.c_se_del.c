
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_set {size_t capacity; int ** args; int writefds; int readfds; int fast; } ;
struct event_set {int dummy; } ;
typedef size_t event_t ;


 int ASSERT (int) ;
 int D_EVENT_ERRORS ;
 int D_EVENT_WAIT ;
 int FD_CLR (size_t,int *) ;
 int dmsg (int ,char*,int) ;
 int msg (int ,char*) ;

__attribute__((used)) static void
se_del(struct event_set *es, event_t event)
{
    struct se_set *ses = (struct se_set *) es;
    ASSERT(!ses->fast);

    dmsg(D_EVENT_WAIT, "SE_DEL ev=%d", (int)event);

    if (event >= 0 && event < ses->capacity)
    {
        FD_CLR(event, &ses->readfds);
        FD_CLR(event, &ses->writefds);
        ses->args[event] = ((void*)0);
    }
    else
    {
        msg(D_EVENT_ERRORS, "Error: select/se_del: too many I/O wait events");
    }
    return;
}
