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
struct m_property {scalar_t__ priv; } ;
struct demuxer {int dummy; } ;
struct TYPE_4__ {struct demuxer* demuxer; TYPE_1__*** current_track; } ;
struct TYPE_3__ {struct demuxer* demuxer; } ;
typedef  TYPE_2__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 int M_PROPERTY_PRINT ; 
 int M_PROPERTY_UNAVAILABLE ; 
 int STREAM_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct demuxer*,double*) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int FUNC2 (int,void*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,double) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    MPContext *mpctx = ctx;
    int type = (uintptr_t)prop->priv & ~0x100;
    bool old = (uintptr_t)prop->priv & 0x100;

    struct demuxer *demuxer = NULL;
    if (mpctx->current_track[0][type])
        demuxer = mpctx->current_track[0][type]->demuxer;
    if (!demuxer)
        demuxer = mpctx->demuxer;
    if (!demuxer)
        return M_PROPERTY_UNAVAILABLE;

    double r[STREAM_TYPE_COUNT];
    FUNC0(demuxer, r);
    if (r[type] < 0)
        return M_PROPERTY_UNAVAILABLE;

    // r[type] is in bytes/second -> bits
    double rate = r[type] * 8;

    // Same story, but used kilobits for some reason.
    if (old)
        return FUNC2(action, arg, FUNC1(rate / 1000.0));

    if (action == M_PROPERTY_PRINT) {
        rate /= 1000;
        if (rate < 1000) {
            *(char **)arg = FUNC3(NULL, "%d kbps", (int)rate);
        } else {
            *(char **)arg = FUNC3(NULL, "%.3f mbps", rate / 1000.0);
        }
        return M_PROPERTY_OK;
    }
    return FUNC2(action, arg, FUNC1(rate));
}