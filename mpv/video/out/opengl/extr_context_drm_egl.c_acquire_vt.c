
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {TYPE_1__* kms; } ;
struct TYPE_2__ {int fd; } ;


 int MP_VERBOSE (int ,char*) ;
 int MP_WARN (int ,char*,int ) ;
 scalar_t__ USE_MASTER ;
 int crtc_setup (struct ra_ctx*) ;
 scalar_t__ drmSetMaster (int ) ;
 int errno ;
 int mp_strerror (int ) ;

__attribute__((used)) static void acquire_vt(void *data)
{
    struct ra_ctx *ctx = data;
    MP_VERBOSE(ctx->vo, "Acquiring VT\n");
    if (USE_MASTER) {
        struct priv *p = ctx->priv;
        if (drmSetMaster(p->kms->fd)) {
            MP_WARN(ctx->vo, "Failed to acquire DRM master: %s\n",
                    mp_strerror(errno));
        }
    }

    crtc_setup(ctx);
}
