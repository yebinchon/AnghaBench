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
struct priv {int pending; int /*<<< orphan*/  pitch; int /*<<< orphan*/  speed; int /*<<< orphan*/  cur_format; scalar_t__ rubber; TYPE_1__* opts; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_2__ {int transients; int detector; int phase; int window; int smoothing; int formant; int pitch; int channels; } ;

/* Variables and functions */
 scalar_t__ AF_FORMAT_FLOATP ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int RubberBandOptionProcessRealTime ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int,int,double,double) ; 
 int /*<<< orphan*/  FUNC7 (struct priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct mp_filter *f)
{
    struct priv *p = f->priv;

    FUNC1(!p->rubber);
    FUNC1(p->pending);

    int opts = p->opts->transients | p->opts->detector | p->opts->phase |
               p->opts->window | p->opts->smoothing | p->opts->formant |
               p->opts->pitch | p-> opts->channels |
               RubberBandOptionProcessRealTime;

    int rate = FUNC5(p->pending);
    int channels = FUNC3(p->pending);
    if (FUNC4(p->pending) != AF_FORMAT_FLOATP)
        return false;

    p->rubber = FUNC6(rate, channels, opts, 1.0, 1.0);
    if (!p->rubber) {
        FUNC0(f, "librubberband initialization failed.\n");
        return false;
    }

    FUNC2(p->cur_format, p->pending);

    FUNC8(p, p->speed);
    FUNC7(p, p->pitch);

    return true;
}