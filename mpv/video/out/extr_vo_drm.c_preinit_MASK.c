#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vo {double monitor_par; int /*<<< orphan*/  log; TYPE_4__* opts; int /*<<< orphan*/  global; struct priv* priv; } ;
struct TYPE_13__ {int skipped_vsyncs; int last_queue_display_time; scalar_t__ vsync_duration; } ;
struct TYPE_9__ {int /*<<< orphan*/ * page_flip_handler; int /*<<< orphan*/  version; } ;
struct priv {int depth; double screen_w; TYPE_5__ vsync_info; scalar_t__ screen_h; TYPE_3__* bufs; TYPE_8__* kms; scalar_t__ swapchain_depth; scalar_t__ buf_count; int /*<<< orphan*/  imgfmt; int /*<<< orphan*/  vt_switcher; scalar_t__ vt_switcher_active; TYPE_1__ ev; TYPE_6__* sws; } ;
struct TYPE_15__ {int /*<<< orphan*/  card_no; int /*<<< orphan*/  fd; } ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;
struct TYPE_12__ {double force_monitor_aspect; int monitor_pixel_aspect; scalar_t__ swapchain_depth; TYPE_2__* drm_opts; } ;
struct TYPE_11__ {double width; scalar_t__ height; } ;
struct TYPE_10__ {scalar_t__ drm_format; int /*<<< orphan*/  drm_mode_spec; int /*<<< orphan*/  drm_connector_spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CAP_DUMB_BUFFER ; 
 int /*<<< orphan*/  DRM_EVENT_CONTEXT_VERSION ; 
 scalar_t__ DRM_OPTS_FORMAT_XRGB2101010 ; 
 int /*<<< orphan*/  IMGFMT_XRGB2101010 ; 
 int /*<<< orphan*/  IMGFMT_XRGB8888 ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/  acquire_vt ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_pflip_cb ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (struct vo*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  release_vt ; 
 int /*<<< orphan*/  FUNC10 (struct vo*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vo*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vo*) ; 

__attribute__((used)) static int FUNC14(struct vo *vo)
{
    struct priv *p = vo->priv;
    p->sws = FUNC7(vo);
    p->sws->log = vo->log;
    FUNC8(p->sws, vo->global);
    p->ev.version = DRM_EVENT_CONTEXT_VERSION;
    p->ev.page_flip_handler = &drm_pflip_cb;

    p->vt_switcher_active = FUNC12(&p->vt_switcher, vo->log);
    if (p->vt_switcher_active) {
        FUNC11(&p->vt_switcher, acquire_vt, vo);
        FUNC13(&p->vt_switcher, release_vt, vo);
    } else {
        FUNC1(vo, "Failed to set up VT switcher. Terminal switching will be unavailable.\n");
    }

    p->kms = FUNC5(vo->log,
                        vo->opts->drm_opts->drm_connector_spec,
                        vo->opts->drm_opts->drm_mode_spec,
                        0, 0, false);
    if (!p->kms) {
        FUNC0(vo, "Failed to create KMS.\n");
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
    if (!FUNC4(vo)) {
        FUNC0(vo, "Failed to set up buffers.\n");
        goto err;
    }

    uint64_t has_dumb;
    if (FUNC3(p->kms->fd, DRM_CAP_DUMB_BUFFER, &has_dumb) < 0) {
        FUNC0(vo, "Card \"%d\" does not support dumb buffers.\n",
               p->kms->card_no);
        goto err;
    }

    p->screen_w = p->bufs[0].width;
    p->screen_h = p->bufs[0].height;

    if (!FUNC2(vo)) {
        FUNC0(vo, "Cannot set CRTC: %s\n", FUNC6(errno));
        goto err;
    }

    if (vo->opts->force_monitor_aspect != 0.0) {
        vo->monitor_par = p->screen_w / (double) p->screen_h /
                          vo->opts->force_monitor_aspect;
    } else {
        vo->monitor_par = 1 / vo->opts->monitor_pixel_aspect;
    }
    FUNC9(vo->log, "Monitor pixel aspect: %g\n", vo->monitor_par);

    p->vsync_info.vsync_duration = 0;
    p->vsync_info.skipped_vsyncs = -1;
    p->vsync_info.last_queue_display_time = -1;

    return 0;

err:
    FUNC10(vo);
    return -1;
}