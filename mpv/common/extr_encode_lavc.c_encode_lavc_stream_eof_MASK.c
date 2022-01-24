#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mux_stream {int /*<<< orphan*/  name; int /*<<< orphan*/  st; } ;
struct encode_priv {int failed; } ;
struct encode_lavc_context {int /*<<< orphan*/  lock; struct encode_priv* priv; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct encode_priv*,char*,int /*<<< orphan*/ ) ; 
 struct mux_stream* FUNC1 (struct encode_lavc_context*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct encode_lavc_context *ctx,
                            enum stream_type type)
{
    if (!ctx)
        return;

    struct encode_priv *p = ctx->priv;

    FUNC3(&ctx->lock);

    enum AVMediaType codec_type = FUNC2(type);
    struct mux_stream *dst = FUNC1(ctx, codec_type);

    // If we've reached EOF, even though the stream was selected, and we didn't
    // ever initialize it, we have a problem. We could mux some sort of dummy
    // stream (and could fail if actual data arrives later), or we bail out
    // early.
    if (dst && !dst->st) {
        FUNC0(p, "No data on stream %s.\n", dst->name);
        p->failed = true;
    }

    FUNC4(&ctx->lock);
}