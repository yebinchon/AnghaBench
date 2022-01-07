
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {TYPE_2__* screenshot_ctx; } ;
struct TYPE_5__ {TYPE_3__* mpctx; int frameno; } ;
typedef TYPE_2__ screenshot_ctx ;
struct TYPE_6__ {int global; TYPE_1__* opts; } ;
struct TYPE_4__ {char* screenshot_directory; int screenshot_template; } ;


 int MSGL_ERR ;
 char* bstrto0 (char*,int ) ;
 char* create_fname (TYPE_3__*,int ,char const*,int*,int *) ;
 int mp_cmd_msg (struct mp_cmd_ctx*,int ,char*,...) ;
 int mp_dirname (char*) ;
 char* mp_get_user_path (void*,int ,char*) ;
 int mp_mkdirp (char*) ;
 int mp_path_exists (char*) ;
 char* mp_path_join (int *,char*,char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static char *gen_fname(struct mp_cmd_ctx *cmd, const char *file_ext)
{
    struct MPContext *mpctx = cmd->mpctx;
    screenshot_ctx *ctx = mpctx->screenshot_ctx;

    int sequence = 0;
    for (;;) {
        int prev_sequence = sequence;
        char *fname = create_fname(ctx->mpctx,
                                   ctx->mpctx->opts->screenshot_template,
                                   file_ext,
                                   &sequence,
                                   &ctx->frameno);

        if (!fname) {
            mp_cmd_msg(cmd, MSGL_ERR, "Invalid screenshot filename "
                       "template! Fix or remove the --screenshot-template "
                       "option.");
            return ((void*)0);
        }

        char *dir = ctx->mpctx->opts->screenshot_directory;
        if (dir && dir[0]) {
            void *t = fname;
            dir = mp_get_user_path(t, ctx->mpctx->global, dir);
            fname = mp_path_join(((void*)0), dir, fname);

            mp_mkdirp(dir);

            talloc_free(t);
        }

        char *full_dir = bstrto0(fname, mp_dirname(fname));
        if (!mp_path_exists(full_dir)) {
            mp_mkdirp(full_dir);
        }

        if (!mp_path_exists(fname))
            return fname;

        if (sequence == prev_sequence) {
            mp_cmd_msg(cmd, MSGL_ERR, "Can't save screenshot, file '%s' "
                       "already exists!", fname);
            talloc_free(fname);
            return ((void*)0);
        }

        talloc_free(fname);
    }
}
