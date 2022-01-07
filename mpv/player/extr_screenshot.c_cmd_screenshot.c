
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char mp_image ;
struct mp_cmd_ctx {int success; int cmd; TYPE_2__* args; struct MPContext* mpctx; } ;
struct image_writer_opts {int dummy; } ;
struct MPContext {TYPE_5__* opts; int osd; TYPE_6__* screenshot_ctx; } ;
struct TYPE_15__ {TYPE_7__* each_frame; } ;
typedef TYPE_6__ screenshot_ctx ;
struct TYPE_16__ {TYPE_4__* args; } ;
struct TYPE_14__ {struct image_writer_opts* screenshot_image_opts; } ;
struct TYPE_12__ {int i; } ;
struct TYPE_13__ {TYPE_3__ v; } ;
struct TYPE_10__ {int i; } ;
struct TYPE_11__ {TYPE_1__ v; } ;


 int MODE_SUBTITLES ;
 int MSGL_ERR ;
 int TA_FREEP (TYPE_7__**) ;
 char* gen_fname (struct mp_cmd_ctx*,int ) ;
 int image_writer_file_ext (struct image_writer_opts*) ;
 int image_writer_high_depth (struct image_writer_opts*) ;
 int mp_cmd_clone (int ) ;
 int mp_cmd_msg (struct mp_cmd_ctx*,int ,char*) ;
 scalar_t__ osd_get_render_subs_in_filter (int ) ;
 char* screenshot_get (struct MPContext*,int,int) ;
 int talloc_free (char*) ;
 TYPE_7__* talloc_steal (TYPE_6__*,int ) ;
 int write_screenshot (struct mp_cmd_ctx*,char*,char*,int *) ;

void cmd_screenshot(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int mode = cmd->args[0].v.i & 3;
    bool each_frame_toggle = (cmd->args[0].v.i | cmd->args[1].v.i) & 8;
    bool each_frame_mode = cmd->args[0].v.i & 16;

    screenshot_ctx *ctx = mpctx->screenshot_ctx;

    if (mode == MODE_SUBTITLES && osd_get_render_subs_in_filter(mpctx->osd))
        mode = 0;

    if (!each_frame_mode) {
        if (each_frame_toggle) {
            if (ctx->each_frame) {
                TA_FREEP(&ctx->each_frame);
                return;
            }
            ctx->each_frame = talloc_steal(ctx, mp_cmd_clone(cmd->cmd));
            ctx->each_frame->args[0].v.i |= 16;
        } else {
            TA_FREEP(&ctx->each_frame);
        }
    }

    cmd->success = 0;

    struct image_writer_opts *opts = mpctx->opts->screenshot_image_opts;
    bool high_depth = image_writer_high_depth(opts);

    struct mp_image *image = screenshot_get(mpctx, mode, high_depth);

    if (image) {
        char *filename = gen_fname(cmd, image_writer_file_ext(opts));
        if (filename)
            cmd->success = write_screenshot(cmd, image, filename, ((void*)0));
        talloc_free(filename);
    } else {
        mp_cmd_msg(cmd, MSGL_ERR, "Taking screenshot failed.");
    }

    talloc_free(image);
}
