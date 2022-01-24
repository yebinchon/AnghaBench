#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wasapi_state {int /*<<< orphan*/  opt_exclusive; } ;
struct mp_chmap_sel {struct wasapi_state* tmp; } ;
struct mp_chmap {int dummy; } ;
struct ao {struct mp_chmap channels; struct wasapi_state* priv; } ;
struct TYPE_7__ {scalar_t__ nSamplesPerSec; } ;
struct TYPE_8__ {TYPE_1__ Format; } ;
typedef  TYPE_2__ WAVEFORMATEXTENSIBLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 scalar_t__ FUNC1 (struct ao*,struct mp_chmap_sel*,struct mp_chmap*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_chmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_chmap_sel*,struct mp_chmap*) ; 
 scalar_t__ FUNC6 (struct ao*,TYPE_2__*,struct mp_chmap*) ; 
 scalar_t__ FUNC7 (struct ao*,TYPE_2__*) ; 

__attribute__((used)) static bool FUNC8(struct ao *ao, WAVEFORMATEXTENSIBLE *wformat)
{
    struct wasapi_state *state = ao->priv;
    struct mp_chmap_sel chmap_sel = {.tmp = state};
    struct mp_chmap entry;
    // put common layouts first so that we find sample rate/format early
    char *channel_layouts[] =
        {"stereo", "5.1", "7.1", "6.1", "mono", "2.1", "4.0", "5.0",
         "3.0", "3.0(back)",
         "quad", "quad(side)", "3.1",
         "5.0(side)", "4.1",
         "5.1(side)", "6.0", "6.0(front)", "hexagonal"
         "6.1(back)", "6.1(front)", "7.0", "7.0(front)",
         "7.1(wide)", "7.1(wide-side)", "7.1(rear)", "octagonal", NULL};

    wformat->Format.nSamplesPerSec = 0;
    for (int j = 0; channel_layouts[j]; j++) {
        FUNC4(&entry, FUNC2(channel_layouts[j]));
        if (!wformat->Format.nSamplesPerSec) {
            if (FUNC6(ao, wformat, &entry))
                FUNC5(&chmap_sel, &entry);
        } else {
            FUNC3(wformat, &entry);
            if (FUNC7(ao, wformat))
                FUNC5(&chmap_sel, &entry);
        }
    }

    entry = ao->channels;
    if (FUNC1(ao, &chmap_sel, &entry, !state->opt_exclusive)){
        FUNC3(wformat, &entry);
        return true;
    }

    FUNC0(ao, "No suitable audio format found\n");
    return false;
}