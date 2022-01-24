#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_image {int dummy; } ;
struct mp_cmd_ctx {int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct image_writer_opts {int format; } ;
struct MPContext {TYPE_3__* opts; } ;
struct TYPE_6__ {struct image_writer_opts* screenshot_image_opts; } ;
struct TYPE_4__ {char* s; int i; } ;
struct TYPE_5__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_ERR ; 
 int FUNC0 (char*) ; 
 int FUNC1 (struct image_writer_opts*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_cmd_ctx*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 struct mp_image* FUNC4 (struct MPContext*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*) ; 
 int FUNC6 (struct mp_cmd_ctx*,struct mp_image*,char const*,struct image_writer_opts*) ; 

void FUNC7(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    const char *filename = cmd->args[0].v.s;
    int mode = cmd->args[1].v.i;
    struct image_writer_opts opts = *mpctx->opts->screenshot_image_opts;

    char *ext = FUNC3(filename, NULL);
    int format = FUNC0(ext);
    if (format)
        opts.format = format;
    bool high_depth = FUNC1(&opts);
    struct mp_image *image = FUNC4(mpctx, mode, high_depth);
    if (!image) {
        FUNC2(cmd, MSGL_ERR, "Taking screenshot failed.");
        cmd->success = false;
        return;
    }
    cmd->success = FUNC6(cmd, image, filename, &opts);
    FUNC5(image);
}