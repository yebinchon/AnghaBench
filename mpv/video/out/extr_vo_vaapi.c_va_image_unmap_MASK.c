#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_vaapi_ctx {int /*<<< orphan*/  display; } ;
typedef  int /*<<< orphan*/  VAStatus ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ VAImage ;

/* Variables and functions */
 int FUNC0 (struct mp_vaapi_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct mp_vaapi_ctx *ctx, VAImage *image)
{
    const VAStatus status = FUNC1(ctx->display, image->buf);
    return FUNC0(ctx, "vaUnmapBuffer()");
}