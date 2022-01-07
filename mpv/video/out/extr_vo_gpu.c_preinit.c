
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int hwdec_devs; int osd; int global; int log; struct gpu_priv* priv; } ;
struct ra_ctx_opts {int want_alpha; } ;
struct gpu_priv {int renderer; TYPE_1__* ctx; int context_name; int context_type; struct ra_ctx_opts opts; int log; } ;
struct TYPE_2__ {int ra; int swapchain; } ;


 int assert (int ) ;
 int call_request_hwdec_api ;
 int get_and_update_icc_profile (struct gpu_priv*) ;
 int gl_video_configure_queue (int ,struct vo*) ;
 int gl_video_init (int ,int ,int ) ;
 int gl_video_load_hwdecs (int ,int ,int) ;
 int gl_video_set_osd_source (int ,int ) ;
 int hwdec_devices_create () ;
 int hwdec_devices_set_loader (int ,int ,struct vo*) ;
 int m_option_type_choice ;
 int mp_read_option_raw (int ,char*,int *,int*) ;
 TYPE_1__* ra_ctx_create (struct vo*,int ,int ,struct ra_ctx_opts) ;
 int uninit (struct vo*) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct gpu_priv *p = vo->priv;
    p->log = vo->log;

    int alpha_mode;
    mp_read_option_raw(vo->global, "alpha", &m_option_type_choice, &alpha_mode);

    struct ra_ctx_opts opts = p->opts;
    opts.want_alpha = alpha_mode == 1;

    p->ctx = ra_ctx_create(vo, p->context_type, p->context_name, opts);
    if (!p->ctx)
        goto err_out;
    assert(p->ctx->ra);
    assert(p->ctx->swapchain);

    p->renderer = gl_video_init(p->ctx->ra, vo->log, vo->global);
    gl_video_set_osd_source(p->renderer, vo->osd);
    gl_video_configure_queue(p->renderer, vo);

    get_and_update_icc_profile(p);

    vo->hwdec_devs = hwdec_devices_create();
    hwdec_devices_set_loader(vo->hwdec_devs, call_request_hwdec_api, vo);

    gl_video_load_hwdecs(p->renderer, vo->hwdec_devs, 0);

    return 0;

err_out:
    uninit(vo);
    return -1;
}
