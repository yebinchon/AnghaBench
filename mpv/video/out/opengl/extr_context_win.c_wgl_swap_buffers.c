
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {TYPE_2__* vo; int global; struct priv* priv; } ;
struct priv {int opt_swapinterval; int current_swapinterval; int (* real_wglSwapInterval ) (int) ;int hdc; } ;
struct TYPE_4__ {TYPE_1__* opts; } ;
struct TYPE_3__ {int fullscreen; } ;


 scalar_t__ DwmFlush () ;
 int MP_VERBOSE (TYPE_2__*,char*,int) ;
 scalar_t__ S_OK ;
 int SwapBuffers (int ) ;
 scalar_t__ compositor_active (struct ra_ctx*) ;
 int m_option_type_choice ;
 int mp_read_option_raw (int ,char*,int *,int*) ;
 int stub1 (int) ;

__attribute__((used)) static void wgl_swap_buffers(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    SwapBuffers(p->hdc);


    int new_swapinterval = p->opt_swapinterval;

    int dwm_flush_opt;
    mp_read_option_raw(ctx->global, "opengl-dwmflush", &m_option_type_choice,
                       &dwm_flush_opt);

    if (dwm_flush_opt >= 0) {
        if ((dwm_flush_opt == 1 && !ctx->vo->opts->fullscreen) ||
            (dwm_flush_opt == 2) ||
            (dwm_flush_opt == 0 && compositor_active(ctx)))
        {
            if (DwmFlush() == S_OK)
                new_swapinterval = 0;
        }
    }

    if (new_swapinterval != p->current_swapinterval &&
        p->real_wglSwapInterval)
    {
        p->real_wglSwapInterval(new_swapinterval);
        MP_VERBOSE(ctx->vo, "set SwapInterval(%d)\n", new_swapinterval);
    }
    p->current_swapinterval = new_swapinterval;
}
