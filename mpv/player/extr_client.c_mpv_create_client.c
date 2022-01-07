
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_8__ {int clients; } ;


 TYPE_2__* mp_new_client (int ,char const*) ;
 TYPE_2__* mpv_create () ;
 int mpv_wait_event (TYPE_2__*,int ) ;

mpv_handle *mpv_create_client(mpv_handle *ctx, const char *name)
{
    if (!ctx)
        return mpv_create();
    mpv_handle *new = mp_new_client(ctx->mpctx->clients, name);
    if (new)
        mpv_wait_event(new, 0);
    return new;
}
