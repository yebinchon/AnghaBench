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
struct m_property {int dummy; } ;
struct demux_reader_state {scalar_t__ ts_duration; } ;
struct TYPE_2__ {int /*<<< orphan*/  demuxer; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct demux_reader_state*) ; 
 int FUNC1 (int,void*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                                              int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->demuxer)
        return M_PROPERTY_UNAVAILABLE;

    struct demux_reader_state s;
    FUNC0(mpctx->demuxer, &s);

    if (s.ts_duration < 0)
        return M_PROPERTY_UNAVAILABLE;

    return FUNC1(action, arg, s.ts_duration);
}