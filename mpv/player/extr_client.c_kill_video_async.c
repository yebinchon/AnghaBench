
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_client_api {struct MPContext* mpctx; } ;
struct MPContext {int dispatch; } ;


 int do_kill ;
 int mp_dispatch_enqueue (int ,int ,struct MPContext*) ;

void kill_video_async(struct mp_client_api *client_api)
{
    struct MPContext *mpctx = client_api->mpctx;
    mp_dispatch_enqueue(mpctx->dispatch, do_kill, mpctx);
}
