
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int ctx; int pix; TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__ cocoa_force_dedicated_gpu; } ;
typedef int GLint ;
typedef scalar_t__ CGLPixelFormatAttribute ;
typedef int CGLOpenGLProfile ;
typedef scalar_t__ CGLError ;


 scalar_t__ CGLChoosePixelFormat (scalar_t__*,int *,int *) ;
 scalar_t__ CGLCreateContext (int ,int ,int *) ;
 int CGLErrorString (scalar_t__) ;
 int MP_ARRAY_SIZE (scalar_t__*) ;
 int MP_ERR (int ,char*,int ,scalar_t__) ;
 scalar_t__ kCGLBadAttribute ;
 scalar_t__ kCGLNoError ;
 scalar_t__ kCGLPFAAccelerated ;
 scalar_t__ kCGLPFAAllowOfflineRenderers ;
 scalar_t__ kCGLPFAOpenGLProfile ;
 scalar_t__ kCGLPFASupportsAutomaticGraphicsSwitching ;

__attribute__((used)) static CGLError test_gl_version(struct ra_ctx *ctx, CGLOpenGLProfile ver)
{
    struct priv *p = ctx->priv;

    CGLPixelFormatAttribute attrs[] = {


        kCGLPFAOpenGLProfile,
        (CGLPixelFormatAttribute) ver,
        kCGLPFAAccelerated,
        kCGLPFAAllowOfflineRenderers,

        kCGLPFASupportsAutomaticGraphicsSwitching,
        0
    };

    GLint npix;
    CGLError err;
    int supported_attribute = MP_ARRAY_SIZE(attrs)-1;

    if (p->opts->cocoa_force_dedicated_gpu)
        attrs[--supported_attribute] = 0;

    err = CGLChoosePixelFormat(attrs, &p->pix, &npix);
    while (err == kCGLBadAttribute && supported_attribute > 3) {




        attrs[--supported_attribute] = 0;
        err = CGLChoosePixelFormat(attrs, &p->pix, &npix);
    }

    if (err != kCGLNoError) {
        MP_ERR(ctx->vo, "error creating CGL pixel format: %s (%d)\n",
               CGLErrorString(err), err);
        goto error_out;
    }

    err = CGLCreateContext(p->pix, 0, &p->ctx);

error_out:
    return err;
}
