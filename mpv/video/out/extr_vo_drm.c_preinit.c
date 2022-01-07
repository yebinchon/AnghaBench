
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct vo {double monitor_par; int log; TYPE_4__* opts; int global; struct priv* priv; } ;
struct TYPE_13__ {int skipped_vsyncs; int last_queue_display_time; scalar_t__ vsync_duration; } ;
struct TYPE_9__ {int * page_flip_handler; int version; } ;
struct priv {int depth; double screen_w; TYPE_5__ vsync_info; scalar_t__ screen_h; TYPE_3__* bufs; TYPE_8__* kms; scalar_t__ swapchain_depth; scalar_t__ buf_count; int imgfmt; int vt_switcher; scalar_t__ vt_switcher_active; TYPE_1__ ev; TYPE_6__* sws; } ;
struct TYPE_15__ {int card_no; int fd; } ;
struct TYPE_14__ {int log; } ;
struct TYPE_12__ {double force_monitor_aspect; int monitor_pixel_aspect; scalar_t__ swapchain_depth; TYPE_2__* drm_opts; } ;
struct TYPE_11__ {double width; scalar_t__ height; } ;
struct TYPE_10__ {scalar_t__ drm_format; int drm_mode_spec; int drm_connector_spec; } ;


 int DRM_CAP_DUMB_BUFFER ;
 int DRM_EVENT_CONTEXT_VERSION ;
 scalar_t__ DRM_OPTS_FORMAT_XRGB2101010 ;
 int IMGFMT_XRGB2101010 ;
 int IMGFMT_XRGB8888 ;
 int MP_ERR (struct vo*,char*,...) ;
 int MP_WARN (struct vo*,char*) ;
 int acquire_vt ;
 int crtc_setup (struct vo*) ;
 scalar_t__ drmGetCap (int ,int ,int *) ;
 int drm_pflip_cb ;
 int errno ;
 int fb_setup_buffers (struct vo*) ;
 TYPE_8__* kms_create (int ,int ,int ,int ,int ,int) ;
 int mp_strerror (int ) ;
 TYPE_6__* mp_sws_alloc (struct vo*) ;
 int mp_sws_enable_cmdline_opts (TYPE_6__*,int ) ;
 int mp_verbose (int ,char*,int) ;
 int release_vt ;
 int uninit (struct vo*) ;
 int vt_switcher_acquire (int *,int ,struct vo*) ;
 scalar_t__ vt_switcher_init (int *,int ) ;
 int vt_switcher_release (int *,int ,struct vo*) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *p = vo->priv;
    p->sws = mp_sws_alloc(vo);
    p->sws->log = vo->log;
    mp_sws_enable_cmdline_opts(p->sws, vo->global);
    p->ev.version = DRM_EVENT_CONTEXT_VERSION;
    p->ev.page_flip_handler = &drm_pflip_cb;

    p->vt_switcher_active = vt_switcher_init(&p->vt_switcher, vo->log);
    if (p->vt_switcher_active) {
        vt_switcher_acquire(&p->vt_switcher, acquire_vt, vo);
        vt_switcher_release(&p->vt_switcher, release_vt, vo);
    } else {
        MP_WARN(vo, "Failed to set up VT switcher. Terminal switching will be unavailable.\n");
    }

    p->kms = kms_create(vo->log,
                        vo->opts->drm_opts->drm_connector_spec,
                        vo->opts->drm_opts->drm_mode_spec,
                        0, 0, 0);
    if (!p->kms) {
        MP_ERR(vo, "Failed to create KMS.\n");
        goto err;
    }

    if (vo->opts->drm_opts->drm_format == DRM_OPTS_FORMAT_XRGB2101010) {
        p->depth = 30;
        p->imgfmt = IMGFMT_XRGB2101010;
    } else {
        p->depth = 24;
        p->imgfmt = IMGFMT_XRGB8888;
    }

    p->swapchain_depth = vo->opts->swapchain_depth;
    p->buf_count = p->swapchain_depth + 1;
    if (!fb_setup_buffers(vo)) {
        MP_ERR(vo, "Failed to set up buffers.\n");
        goto err;
    }

    uint64_t has_dumb;
    if (drmGetCap(p->kms->fd, DRM_CAP_DUMB_BUFFER, &has_dumb) < 0) {
        MP_ERR(vo, "Card \"%d\" does not support dumb buffers.\n",
               p->kms->card_no);
        goto err;
    }

    p->screen_w = p->bufs[0].width;
    p->screen_h = p->bufs[0].height;

    if (!crtc_setup(vo)) {
        MP_ERR(vo, "Cannot set CRTC: %s\n", mp_strerror(errno));
        goto err;
    }

    if (vo->opts->force_monitor_aspect != 0.0) {
        vo->monitor_par = p->screen_w / (double) p->screen_h /
                          vo->opts->force_monitor_aspect;
    } else {
        vo->monitor_par = 1 / vo->opts->monitor_pixel_aspect;
    }
    mp_verbose(vo->log, "Monitor pixel aspect: %g\n", vo->monitor_par);

    p->vsync_info.vsync_duration = 0;
    p->vsync_info.skipped_vsyncs = -1;
    p->vsync_info.last_queue_display_time = -1;

    return 0;

err:
    uninit(vo);
    return -1;
}
