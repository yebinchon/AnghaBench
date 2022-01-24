#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_stream {scalar_t__ type; TYPE_1__* codec; } ;
struct mp_decoder_wrapper {int play_dir; scalar_t__ fps; struct mp_filter* f; } ;
struct priv {int /*<<< orphan*/  demux; struct sh_stream* header; void* log; struct mp_decoder_wrapper public; TYPE_2__* opt_cache; TYPE_1__* codec; struct mp_filter* f; } ;
struct mp_filter {int /*<<< orphan*/ * pins; void* log; int /*<<< orphan*/  global; struct priv* priv; } ;
struct MPOpts {scalar_t__ force_fps; } ;
struct TYPE_4__ {struct MPOpts* opts; } ;
struct TYPE_3__ {scalar_t__ fps; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,char*,...) ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,char*,scalar_t__) ; 
 scalar_t__ STREAM_AUDIO ; 
 scalar_t__ STREAM_VIDEO ; 
 int /*<<< orphan*/  decode_wrapper_filter ; 
 TYPE_2__* FUNC2 (struct priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mp_filter* FUNC3 (struct mp_filter*,struct sh_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC5 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct mp_filter*,void*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_filter*) ; 

struct mp_decoder_wrapper *FUNC9(struct mp_filter *parent,
                                                     struct sh_stream *src)
{
    struct mp_filter *f = FUNC5(parent, &decode_wrapper_filter);
    if (!f)
        return NULL;

    struct priv *p = f->priv;
    struct mp_decoder_wrapper *w = &p->public;
    p->opt_cache = FUNC2(p, f->global, GLOBAL_CONFIG);
    p->log = f->log;
    p->f = f;
    p->header = src;
    p->codec = p->header->codec;
    w->f = f;

    w->play_dir = 1;

    struct MPOpts *opts = p->opt_cache->opts;

    FUNC4(f, MP_PIN_OUT, "out");

    if (p->header->type == STREAM_VIDEO) {
        p->log = f->log = FUNC6(f, parent->log, "!vd");

        p->public.fps = src->codec->fps;

        FUNC1(p, "Container reported FPS: %f\n", p->public.fps);

        if (opts->force_fps) {
            p->public.fps = opts->force_fps;
            FUNC0(p, "FPS forced to %5.3f.\n", p->public.fps);
            FUNC0(p, "Use --no-correct-pts to force FPS based timing.\n");
        }
    } else if (p->header->type == STREAM_AUDIO) {
        p->log = f->log = FUNC6(f, parent->log, "!ad");
    }

    struct mp_filter *demux = FUNC3(f, p->header);
    if (!demux)
        goto error;
    p->demux = demux->pins[0];

    FUNC7(f);

    return w;
error:
    FUNC8(f);
    return NULL;
}