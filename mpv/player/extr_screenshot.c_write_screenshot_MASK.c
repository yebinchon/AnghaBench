#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_image {int dummy; } ;
struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct image_writer_opts {int dummy; } ;
struct MPContext {int /*<<< orphan*/  log; int /*<<< orphan*/  global; TYPE_1__* opts; } ;
struct TYPE_2__ {struct image_writer_opts* screenshot_image_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_ERR ; 
 int /*<<< orphan*/  MSGL_INFO ; 
 int /*<<< orphan*/  MSGL_V ; 
 int /*<<< orphan*/  FUNC0 (struct mp_cmd_ctx*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 scalar_t__ FUNC3 (struct mp_image*,struct image_writer_opts*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct mp_cmd_ctx *cmd, struct mp_image *img,
                             const char *filename, struct image_writer_opts *opts)
{
    struct MPContext *mpctx = cmd->mpctx;
    struct image_writer_opts *gopts = mpctx->opts->screenshot_image_opts;
    struct image_writer_opts opts_copy = opts ? *opts : *gopts;

    FUNC0(cmd, MSGL_V, "Starting screenshot: '%s'", filename);

    FUNC2(mpctx);

    bool ok = img && FUNC3(img, &opts_copy, filename, mpctx->global,
                                 mpctx->log);

    FUNC1(mpctx);

    if (ok) {
        FUNC0(cmd, MSGL_INFO, "Screenshot: '%s'", filename);
    } else {
        FUNC0(cmd, MSGL_ERR, "Error writing screenshot!");
    }
    return ok;
}