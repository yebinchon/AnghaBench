
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vo {TYPE_1__* x11; } ;
struct ra_ctx {struct vo* vo; struct priv* priv; } ;
struct priv {int egl_display; } ;
struct TYPE_8__ {int visualid; } ;
typedef TYPE_2__ XVisualInfo ;
struct TYPE_7__ {int display; } ;
typedef int EGLConfig ;


 int EGL_NATIVE_VISUAL_ID ;
 int VisualIDMask ;
 int XFree (TYPE_2__*) ;
 TYPE_2__* XGetVisualInfo (int ,int ,TYPE_2__*,int*) ;
 int eglGetConfigAttrib (int ,int ,int ,int*) ;
 int vo_x11_is_rgba_visual (TYPE_2__*) ;

__attribute__((used)) static int pick_xrgba_config(void *user_data, EGLConfig *configs, int num_configs)
{
    struct ra_ctx *ctx = user_data;
    struct priv *p = ctx->priv;
    struct vo *vo = ctx->vo;

    for (int n = 0; n < num_configs; n++) {
        int vID = 0, num;
        eglGetConfigAttrib(p->egl_display, configs[n], EGL_NATIVE_VISUAL_ID, &vID);
        XVisualInfo template = {.visualid = vID};
        XVisualInfo *vi = XGetVisualInfo(vo->x11->display, VisualIDMask,
                                         &template, &num);
        if (vi) {
            bool is_rgba = vo_x11_is_rgba_visual(vi);
            XFree(vi);
            if (is_rgba)
                return n;
        }
    }

    return 0;
}
