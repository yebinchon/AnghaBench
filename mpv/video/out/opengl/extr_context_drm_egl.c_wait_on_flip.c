
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int ev; TYPE_1__* kms; scalar_t__ waiting_for_flip; } ;
struct pollfd {int events; int revents; int fd; } ;
struct TYPE_2__ {int fd; } ;


 int MP_ERR (int ,char*,int const) ;
 int POLLIN ;
 int drmHandleEvent (int ,int *) ;
 int poll (struct pollfd*,int,int const) ;

__attribute__((used)) static void wait_on_flip(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;


    while (p->waiting_for_flip) {
        const int timeout_ms = 3000;
        struct pollfd fds[1] = { { .events = POLLIN, .fd = p->kms->fd } };
        poll(fds, 1, timeout_ms);
        if (fds[0].revents & POLLIN) {
            const int ret = drmHandleEvent(p->kms->fd, &p->ev);
            if (ret != 0) {
                MP_ERR(ctx->vo, "drmHandleEvent failed: %i\n", ret);
                return;
            }
        }
    }
}
