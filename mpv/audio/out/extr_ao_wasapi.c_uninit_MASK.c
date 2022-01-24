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
struct wasapi_state {int /*<<< orphan*/  deviceID; scalar_t__ hAudioThread; scalar_t__ hWake; scalar_t__ hInitDone; } ;
struct ao {struct wasapi_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int /*<<< orphan*/  WASAPI_THREAD_SHUTDOWN ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ao*) ; 

__attribute__((used)) static void FUNC9(struct ao *ao)
{
    FUNC2(ao, "Uninit wasapi\n");
    struct wasapi_state *state = ao->priv;
    if (state->hWake)
        FUNC6(ao, WASAPI_THREAD_SHUTDOWN);

    if (state->hAudioThread &&
        FUNC5(state->hAudioThread, INFINITE) != WAIT_OBJECT_0)
    {
        FUNC3(ao, "Unexpected return value from WaitForSingleObject "
               "while waiting for audio thread to terminate\n");
    }

    FUNC4(state->hInitDone,   FUNC0(state->hInitDone));
    FUNC4(state->hWake,       FUNC0(state->hWake));
    FUNC4(state->hAudioThread,FUNC0(state->hAudioThread));

    FUNC8(ao);

    FUNC7(state->deviceID);

    FUNC1();
    FUNC2(ao, "Uninit wasapi done\n");
}