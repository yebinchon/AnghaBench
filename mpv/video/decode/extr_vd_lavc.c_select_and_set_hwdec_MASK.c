#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hwdec_info {char* method_name; char* name; TYPE_3__* codec; int /*<<< orphan*/  copying; scalar_t__ lavc_device; } ;
struct TYPE_8__ {int hwdec_requested; int use_hwdec; char const* decoder; struct hwdec_info hwdec; scalar_t__ hwdec_devs; int /*<<< orphan*/  hwdec_dev; TYPE_2__* opts; int /*<<< orphan*/  opts_cache; TYPE_1__* codec; } ;
typedef  TYPE_4__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_4__* priv; } ;
struct hwcontext_fns {scalar_t__ (* is_emulated ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  bstr ;
struct TYPE_7__ {char const* name; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  hwdec_api; } ;
struct TYPE_5__ {char* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwdec_info**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_filter*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_filter*,struct hwdec_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct hwcontext_fns* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hwdec_info*) ; 

__attribute__((used)) static void FUNC15(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    const char *codec = ctx->codec->codec;

    FUNC10(ctx->opts_cache);

    bstr opt = FUNC4(ctx->opts->hwdec_api);

    bool hwdec_requested = !FUNC5(opt, "no");
    bool hwdec_auto_all = FUNC5(opt, "auto") ||
                          FUNC5(opt, "yes") ||
                          FUNC5(opt, "");
    bool hwdec_auto_copy = FUNC5(opt, "auto-copy");
    bool hwdec_auto = hwdec_auto_all || hwdec_auto_copy;

    if (!hwdec_requested) {
        FUNC0(vd, "No hardware decoding requested.\n");
    } else if (!FUNC6(vd, codec)) {
        FUNC0(vd, "Not trying to use hardware decoding: codec %s is not "
                   "on whitelist.\n", codec);
    } else {
        struct hwdec_info *hwdecs = NULL;
        int num_hwdecs = 0;
        FUNC2(&hwdecs, &num_hwdecs);

        ctx->hwdec_requested = true;

        for (int n = 0; n < num_hwdecs; n++) {
            struct hwdec_info *hwdec = &hwdecs[n];

            const char *hw_codec = FUNC11(hwdec->codec->id);
            if (!hw_codec || FUNC12(hw_codec, codec) != 0)
                continue;

            if (!hwdec_auto && !(FUNC5(opt, hwdec->method_name) ||
                                 FUNC5(opt, hwdec->name)))
                continue;

            FUNC0(vd, "Looking at hwdec %s...\n", hwdec->name);

            if (hwdec_auto_copy && !hwdec->copying) {
                FUNC0(vd, "Not using this for auto-copy.\n");
                continue;
            }

            if (hwdec->lavc_device) {
                ctx->hwdec_dev = FUNC7(vd, hwdec, hwdec_auto);
                if (!ctx->hwdec_dev) {
                    FUNC0(vd, "Could not create device.\n");
                    continue;
                }

                const struct hwcontext_fns *fns =
                            FUNC9(hwdec->lavc_device);
                if (fns && fns->is_emulated && fns->is_emulated(ctx->hwdec_dev)) {
                    if (hwdec_auto) {
                        FUNC0(vd, "Not using emulated API.\n");
                        FUNC3(&ctx->hwdec_dev);
                        continue;
                    }
                    FUNC1(vd, "Using emulated hardware decoding API.\n");
                }
            } else if (!hwdec->copying) {
                // Most likely METHOD_INTERNAL, which often use delay-loaded
                // VO support as well.
                if (ctx->hwdec_devs)
                    FUNC8(ctx->hwdec_devs);
            }

            ctx->use_hwdec = true;
            ctx->hwdec = *hwdec;
            break;
        }

        FUNC14(hwdecs);

        if (!ctx->use_hwdec)
            FUNC0(vd, "No hardware decoding available for this codec.\n");
    }

    if (ctx->use_hwdec) {
        FUNC0(vd, "Trying hardware decoding via %s.\n", ctx->hwdec.name);
        if (FUNC12(ctx->decoder, ctx->hwdec.codec->name) != 0)
            FUNC0(vd, "Using underlying hw-decoder '%s'\n",
                       ctx->hwdec.codec->name);
    } else {
        FUNC0(vd, "Using software decoding.\n");
    }
}