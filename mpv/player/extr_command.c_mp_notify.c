
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int osd_idle_update; } ;


 int command_event (struct MPContext*,int,void*) ;
 int mp_client_broadcast_event (struct MPContext*,int,void*) ;

void mp_notify(struct MPContext *mpctx, int event, void *arg)
{

    mpctx->osd_idle_update = 1;

    command_event(mpctx, event, arg);

    mp_client_broadcast_event(mpctx, event, arg);
}
