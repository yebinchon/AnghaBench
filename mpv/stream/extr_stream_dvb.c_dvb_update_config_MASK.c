#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ priv; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int switching_channel; } ;
typedef  TYPE_2__ dvb_state_t ;
struct TYPE_10__ {int /*<<< orphan*/  prog; TYPE_2__* state; int /*<<< orphan*/  opts_cache; } ;
typedef  TYPE_3__ dvb_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

void FUNC5(stream_t *stream)
{
    static int last_check = 0;
    int now = (int)(FUNC4()*10);

    // Throttle the check to at maximum once every 0.1 s.
    if (now != last_check) {
        last_check = now;
        dvb_priv_t *priv  = (dvb_priv_t *) stream->priv;
        if (FUNC3(priv->opts_cache)) {
            dvb_state_t *state = priv->state;

            // Re-parse stream path, if we have cfg parameters now,
            // these should be preferred.
            if (!FUNC1(stream)) {
                FUNC0(stream, "error parsing DVB config, not tuning.");
                return;
            }

            int r = FUNC2(stream, priv->prog);
            if (r) {
                // Stream will be pulled down after channel switch,
                // persist state.
                state->switching_channel = true;
            }
        }
    }
}