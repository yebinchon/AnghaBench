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
struct scale_test {TYPE_1__* ctx; } ;
struct mp_image {int dummy; } ;
struct image_writer_opts {int /*<<< orphan*/  format; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; int /*<<< orphan*/  global; int /*<<< orphan*/  out_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct image_writer_opts image_writer_opts_defaults ; 
 char* FUNC2 (int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,struct image_writer_opts*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct scale_test *stest, const char *name,
                       struct mp_image *img)
{
    char *path = FUNC2(4096, "%s/%s.png", stest->ctx->out_path, name);

    struct image_writer_opts opts = image_writer_opts_defaults;
    opts.format = AV_CODEC_ID_PNG;

    if (!FUNC3(img, &opts, path, stest->ctx->global, stest->ctx->log)) {
        FUNC0(stest->ctx, "Failed to write '%s'.\n", path);
        FUNC1();
    }
}