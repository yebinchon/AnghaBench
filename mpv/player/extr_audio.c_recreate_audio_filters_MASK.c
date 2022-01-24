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
struct ao_chain {int /*<<< orphan*/  filter; } ;
struct MPContext {TYPE_1__* opts; struct ao_chain* ao_chain; } ;
struct TYPE_2__ {int /*<<< orphan*/  af_settings; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_AUDIO_RECONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 

__attribute__((used)) static int FUNC5(struct MPContext *mpctx)
{
    struct ao_chain *ao_c = mpctx->ao_chain;
    FUNC1(ao_c);

    if (!FUNC3(ao_c->filter, mpctx->opts->af_settings))
        goto fail;

    FUNC4(mpctx);

    FUNC2(mpctx, MPV_EVENT_AUDIO_RECONFIG, NULL);

    return 0;

fail:
    FUNC0(mpctx, "Audio filter initialized failed!\n");
    return -1;
}