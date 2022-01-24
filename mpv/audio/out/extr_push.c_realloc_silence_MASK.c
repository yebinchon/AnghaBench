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
struct ao_push_state {int silence_samples; int /*<<< orphan*/ * silence; } ;
struct TYPE_2__ {int num; } ;
struct ao {int /*<<< orphan*/  format; TYPE_1__ channels; struct ao_push_state* api_priv; } ;

/* Variables and functions */
 int MP_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ao_push_state*,int) ; 

__attribute__((used)) static bool FUNC5(struct ao *ao, int samples)
{
    struct ao_push_state *p = ao->api_priv;

    if (samples <= 0 || !FUNC1(ao->format))
        return false;

    if (samples > p->silence_samples) {
        FUNC3(p->silence[0]);

        int bytes = FUNC2(ao->format) * samples * ao->channels.num;
        p->silence[0] = FUNC4(p, bytes);
        for (int n = 1; n < MP_NUM_CHANNELS; n++)
            p->silence[n] = p->silence[0];
        p->silence_samples = samples;

        FUNC0(p->silence[0], bytes, ao->format);
    }

    return true;
}