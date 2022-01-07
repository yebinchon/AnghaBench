
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {scalar_t__ gbm_format; TYPE_3__* kms; } ;
struct TYPE_10__ {unsigned int count_formats; scalar_t__* formats; } ;
typedef TYPE_4__ drmModePlane ;
struct TYPE_9__ {TYPE_2__* atomic_context; int fd; } ;
struct TYPE_8__ {TYPE_1__* draw_plane; } ;
struct TYPE_7__ {int id; } ;


 int MP_VERBOSE (int ,char*,int ,...) ;
 int drmModeFreePlane (TYPE_4__*) ;
 TYPE_4__* drmModeGetPlane (int ,int ) ;
 int gbm_format_to_string (scalar_t__) ;

__attribute__((used)) static bool probe_gbm_format(struct ra_ctx *ctx, uint32_t argb_format, uint32_t xrgb_format)
{
    struct priv *p = ctx->priv;

    if (!p->kms->atomic_context) {
        p->gbm_format = xrgb_format;
        MP_VERBOSE(ctx->vo, "Not using DRM Atomic: Use %s for draw plane.\n",
                   gbm_format_to_string(xrgb_format));
        return 1;
    }

    drmModePlane *drmplane =
        drmModeGetPlane(p->kms->fd, p->kms->atomic_context->draw_plane->id);
    bool have_argb = 0;
    bool have_xrgb = 0;
    bool result = 0;
    for (unsigned int i = 0; i < drmplane->count_formats; ++i) {
        if (drmplane->formats[i] == argb_format) {
            have_argb = 1;
        } else if (drmplane->formats[i] == xrgb_format) {
            have_xrgb = 1;
        }
    }

    if (have_argb) {
        p->gbm_format = argb_format;
        MP_VERBOSE(ctx->vo, "%s supported by draw plane.\n", gbm_format_to_string(argb_format));
        result = 1;
    } else if (have_xrgb) {
        p->gbm_format = xrgb_format;
        MP_VERBOSE(ctx->vo, "%s not supported by draw plane: Falling back to %s.\n",
                   gbm_format_to_string(argb_format), gbm_format_to_string(xrgb_format));
        result = 1;
    }

    drmModeFreePlane(drmplane);
    return result;
}
