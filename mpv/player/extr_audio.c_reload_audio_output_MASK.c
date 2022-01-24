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
struct mp_decoder_wrapper {int try_spdif; } ;
struct ao_chain {int spdif_failed; int spdif_passthrough; TYPE_1__* track; int /*<<< orphan*/  filter; } ;
struct MPContext {struct ao_chain* ao_chain; int /*<<< orphan*/  ao; } ;
struct TYPE_2__ {struct mp_decoder_wrapper* dec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_decoder_wrapper*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC6 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC7 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC8 (struct MPContext*) ; 

void FUNC9(struct MPContext *mpctx)
{
    if (!mpctx->ao)
        return;

    FUNC1(mpctx->ao);
    FUNC8(mpctx);
    FUNC6(mpctx); // mostly to issue refresh seek

    struct ao_chain *ao_c = mpctx->ao_chain;

    if (ao_c) {
        FUNC7(mpctx);
        FUNC4(ao_c->filter);
    }

    // Whether we can use spdif might have changed. If we failed to use spdif
    // in the previous initialization, try it with spdif again (we'll fallback
    // to PCM again if necessary).
    if (ao_c && ao_c->track) {
        struct mp_decoder_wrapper *dec = ao_c->track->dec;
        if (dec && ao_c->spdif_failed) {
            ao_c->spdif_passthrough = true;
            ao_c->spdif_failed = false;
            dec->try_spdif = true;
            if (!FUNC3(dec)) {
                FUNC0(mpctx, "Error reinitializing audio.\n");
                FUNC2(mpctx, ao_c->track);
            }
        }
    }

    FUNC5(mpctx);
}