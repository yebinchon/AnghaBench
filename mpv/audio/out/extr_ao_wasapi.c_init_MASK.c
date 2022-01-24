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
struct wasapi_state {int opt_exclusive; int init_ok; void* hInitDone; int /*<<< orphan*/  hAudioThread; int /*<<< orphan*/  dispatch; void* hWake; scalar_t__ deviceID; int /*<<< orphan*/  log; } ;
struct ao {int init_flags; int /*<<< orphan*/  probing; int /*<<< orphan*/  log; struct wasapi_state* priv; } ;

/* Variables and functions */
 int AO_INIT_EXCLUSIVE ; 
 int /*<<< orphan*/  AudioThread ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ao*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wasapi_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  thread_wakeup ; 
 int /*<<< orphan*/  FUNC10 (struct ao*) ; 
 int /*<<< orphan*/  FUNC11 (struct ao*,int) ; 
 scalar_t__ FUNC12 (struct ao*) ; 

__attribute__((used)) static int FUNC13(struct ao *ao)
{
    FUNC4(ao, "Init wasapi\n");
    FUNC1(NULL, COINIT_MULTITHREADED);

    struct wasapi_state *state = ao->priv;
    state->log = ao->log;

    state->opt_exclusive |= ao->init_flags & AO_INIT_EXCLUSIVE;

#if !HAVE_UWP
    state->deviceID = FUNC12(ao);
    if (!state->deviceID) {
        FUNC10(ao);
        return -1;
    }
#endif

    if (state->deviceID)
        FUNC11(ao, false);

    state->hInitDone = FUNC2(NULL, FALSE, FALSE, NULL);
    state->hWake     = FUNC2(NULL, FALSE, FALSE, NULL);
    if (!state->hInitDone || !state->hWake) {
        FUNC5(ao, "Error creating events\n");
        FUNC10(ao);
        return -1;
    }

    state->dispatch = FUNC8(state);
    FUNC9(state->dispatch, thread_wakeup, ao);

    state->init_ok = false;
    state->hAudioThread = FUNC3(NULL, 0, &AudioThread, ao, 0, NULL);
    if (!state->hAudioThread) {
        FUNC5(ao, "Failed to create audio thread\n");
        FUNC10(ao);
        return -1;
    }

    FUNC7(state->hInitDone, INFINITE); // wait on init complete
    FUNC6(state->hInitDone,FUNC0(state->hInitDone));
    if (!state->init_ok) {
        if (!ao->probing)
            FUNC5(ao, "Received failure from audio thread\n");
        FUNC10(ao);
        return -1;
    }

    FUNC4(ao, "Init wasapi done\n");
    return 0;
}