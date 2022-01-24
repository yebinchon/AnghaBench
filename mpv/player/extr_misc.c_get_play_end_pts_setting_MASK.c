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
struct MPOpts {int /*<<< orphan*/  play_length; int /*<<< orphan*/  play_end; } ;
struct MPContext {struct MPOpts* opts; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 double FUNC0 (struct MPContext*) ; 
 double FUNC1 (struct MPContext*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC2(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    double end = FUNC1(mpctx, opts->play_end);
    double length = FUNC1(mpctx, opts->play_length);
    if (length != MP_NOPTS_VALUE) {
        double start = FUNC0(mpctx);
        if (end == MP_NOPTS_VALUE || start + length < end)
            end = start + length;
    }
    return end;
}