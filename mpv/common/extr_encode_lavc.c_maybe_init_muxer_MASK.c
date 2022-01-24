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
struct mux_stream {int /*<<< orphan*/  on_ready_ctx; int /*<<< orphan*/  (* on_ready ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  st; } ;
struct encode_priv {int header_written; int failed; int num_streams; struct mux_stream** streams; int /*<<< orphan*/  log; TYPE_4__* muxer; TYPE_2__* metadata; int /*<<< orphan*/  t0; } ;
struct encode_lavc_context {TYPE_3__* options; struct encode_priv* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  metadata; TYPE_1__* oformat; int /*<<< orphan*/  url; int /*<<< orphan*/  pb; } ;
struct TYPE_7__ {int /*<<< orphan*/  fopts; } ;
struct TYPE_6__ {int num_keys; int /*<<< orphan*/ * values; int /*<<< orphan*/ * keys; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  long_name; } ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct encode_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct encode_priv*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  MSGL_WARN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct encode_lavc_context *ctx)
{
    struct encode_priv *p = ctx->priv;

    if (p->header_written || p->failed)
        return;

    // Check if all streams were initialized yet. We need data to know the
    // AVStream parameters, so we wait for data from _all_ streams before
    // starting.
    for (int n = 0; n < p->num_streams; n++) {
        if (!p->streams[n]->st)
            return;
    }

    if (!(p->muxer->oformat->flags & AVFMT_NOFILE)) {
        FUNC1(p, "Opening output file: %s\n", p->muxer->url);

        if (FUNC5(&p->muxer->pb, p->muxer->url, AVIO_FLAG_WRITE) < 0) {
            FUNC0(p, "could not open '%s'\n", p->muxer->url);
            goto failed;
        }
    }

    p->t0 = FUNC8();

    FUNC1(p, "Opening muxer: %s [%s]\n",
            p->muxer->oformat->long_name, p->muxer->oformat->name);

    if (p->metadata) {
        for (int i = 0; i < p->metadata->num_keys; i++) {
            FUNC3(&p->muxer->metadata,
                p->metadata->keys[i], p->metadata->values[i], 0);
        }
    }

    AVDictionary *opts = NULL;
    FUNC7(&opts, ctx->options->fopts);

    if (FUNC4(p->muxer, &opts) < 0) {
        FUNC0(p, "Failed to initialize muxer.\n");
        p->failed = true;
    } else {
        FUNC6(p->log, MSGL_WARN, opts);
    }

    FUNC2(&opts);

    if (p->failed)
        goto failed;

    p->header_written = true;

    for (int n = 0; n < p->num_streams; n++) {
        struct mux_stream *s = p->streams[n];

        if (s->on_ready)
            s->on_ready(s->on_ready_ctx);
    }

    return;

failed:
    p->failed = true;
}