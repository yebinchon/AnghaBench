
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_image {int dummy; } ;
struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct image_writer_opts {int dummy; } ;
struct MPContext {int log; int global; TYPE_1__* opts; } ;
struct TYPE_2__ {struct image_writer_opts* screenshot_image_opts; } ;


 int MSGL_ERR ;
 int MSGL_INFO ;
 int MSGL_V ;
 int mp_cmd_msg (struct mp_cmd_ctx*,int ,char*,...) ;
 int mp_core_lock (struct MPContext*) ;
 int mp_core_unlock (struct MPContext*) ;
 scalar_t__ write_image (struct mp_image*,struct image_writer_opts*,char const*,int ,int ) ;

__attribute__((used)) static bool write_screenshot(struct mp_cmd_ctx *cmd, struct mp_image *img,
                             const char *filename, struct image_writer_opts *opts)
{
    struct MPContext *mpctx = cmd->mpctx;
    struct image_writer_opts *gopts = mpctx->opts->screenshot_image_opts;
    struct image_writer_opts opts_copy = opts ? *opts : *gopts;

    mp_cmd_msg(cmd, MSGL_V, "Starting screenshot: '%s'", filename);

    mp_core_unlock(mpctx);

    bool ok = img && write_image(img, &opts_copy, filename, mpctx->global,
                                 mpctx->log);

    mp_core_lock(mpctx);

    if (ok) {
        mp_cmd_msg(cmd, MSGL_INFO, "Screenshot: '%s'", filename);
    } else {
        mp_cmd_msg(cmd, MSGL_ERR, "Error writing screenshot!");
    }
    return ok;
}
