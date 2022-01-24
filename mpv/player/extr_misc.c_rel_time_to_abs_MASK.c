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
struct m_rel_time {int type; double pos; } ;
struct MPContext {TYPE_2__* demuxer; TYPE_1__* opts; } ;
struct TYPE_4__ {double start_time; } ;
struct TYPE_3__ {int /*<<< orphan*/  rebase_start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 double MP_NOPTS_VALUE ; 
#define  REL_TIME_ABSOLUTE 131 
#define  REL_TIME_CHAPTER 130 
#define  REL_TIME_PERCENT 129 
#define  REL_TIME_RELATIVE 128 
 double FUNC1 (struct MPContext*,double) ; 
 double FUNC2 (struct MPContext*) ; 

double FUNC3(struct MPContext *mpctx, struct m_rel_time t)
{
    double length = FUNC2(mpctx);
    // Relative times are an offset to the start of the file.
    double start = 0;
    if (mpctx->demuxer && !mpctx->opts->rebase_start_time)
        start = mpctx->demuxer->start_time;

    switch (t.type) {
    case REL_TIME_ABSOLUTE:
        return t.pos;
    case REL_TIME_RELATIVE:
        if (t.pos >= 0) {
            return start + t.pos;
        } else {
            if (length >= 0)
                return start + FUNC0(length + t.pos, 0.0);
        }
        break;
    case REL_TIME_PERCENT:
        if (length >= 0)
            return start + length * (t.pos / 100.0);
        break;
    case REL_TIME_CHAPTER:
        return FUNC1(mpctx, t.pos); // already absolute time
    }

    return MP_NOPTS_VALUE;
}