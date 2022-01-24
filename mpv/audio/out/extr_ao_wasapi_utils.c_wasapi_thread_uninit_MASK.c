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
struct wasapi_state {int /*<<< orphan*/  hTask; scalar_t__ pDevice; scalar_t__ pAudioClient; scalar_t__ pSessionControl; scalar_t__ pEndpointVolume; scalar_t__ pAudioVolume; scalar_t__ pAudioClock; scalar_t__ pRenderClient; } ;
struct ao {struct wasapi_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    FUNC2(ao, "Thread shutdown\n");

    if (state->pAudioClient)
        FUNC1(state->pAudioClient);

    FUNC4(state->pRenderClient);
    FUNC4(state->pAudioClock);
    FUNC4(state->pAudioVolume);
    FUNC4(state->pEndpointVolume);
    FUNC4(state->pSessionControl);
    FUNC4(state->pAudioClient);
    FUNC4(state->pDevice);
#if !HAVE_UWP
    FUNC3(state->hTask, FUNC0(state->hTask));
#endif
    FUNC2(ao, "Thread uninit done\n");
}