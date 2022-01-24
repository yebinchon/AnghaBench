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
struct TYPE_2__ {int type; float value; } ;
struct MPContext {TYPE_1__ osd_progbar; int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(struct MPContext *mpctx, int type,
                           double min, double max, double val)
{
    if (mpctx->osd_progbar.type != type)
        return;

    float new_value = (val - min) / (max - min);
    if (new_value != mpctx->osd_progbar.value) {
        mpctx->osd_progbar.value = new_value;
        FUNC0(mpctx->osd, &mpctx->osd_progbar);
    }
}