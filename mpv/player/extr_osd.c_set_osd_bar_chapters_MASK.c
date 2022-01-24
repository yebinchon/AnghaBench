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
struct TYPE_2__ {int type; scalar_t__ num_stops; int /*<<< orphan*/  stops; } ;
struct MPContext {TYPE_1__ osd_progbar; int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ,scalar_t__,float) ; 
 double FUNC1 (struct MPContext*,int) ; 
 int FUNC2 (struct MPContext*,double*) ; 
 int FUNC3 (struct MPContext*) ; 
 double FUNC4 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC7(struct MPContext *mpctx, int type)
{
    if (mpctx->osd_progbar.type != type)
        return;

    mpctx->osd_progbar.num_stops = 0;
    double len = FUNC4(mpctx);
    if (len > 0) {
        // Always render the loop points, even if they're incomplete.
        double ab[2];
        bool valid = FUNC2(mpctx, ab);
        for (int n = 0; n < 2; n++) {
            if (ab[n] != MP_NOPTS_VALUE) {
                FUNC0(mpctx, mpctx->osd_progbar.stops,
                                 mpctx->osd_progbar.num_stops, ab[n] / len);
            }
        }
        if (!valid) {
            int num = FUNC3(mpctx);
            for (int n = 0; n < num; n++) {
                double time = FUNC1(mpctx, n);
                if (time >= 0) {
                    float pos = time / len;
                    FUNC0(mpctx, mpctx->osd_progbar.stops,
                                     mpctx->osd_progbar.num_stops, pos);
                }
            }
        }
    }
    FUNC6(mpctx->osd, &mpctx->osd_progbar);
    FUNC5(mpctx);
}