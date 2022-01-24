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
struct wasapi_state {int /*<<< orphan*/  sample_count; int /*<<< orphan*/  pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wasapi_state*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    HRESULT hr;
    FUNC3(state, "Thread Reset\n");
    hr = FUNC2(state->pAudioClient);
    if (FUNC0(hr))
        FUNC4(state, "IAudioClient_Stop returned: %s\n", FUNC6(hr));

    hr = FUNC1(state->pAudioClient);
    if (FUNC0(hr))
        FUNC4(state, "IAudioClient_Reset returned: %s\n", FUNC6(hr));

    FUNC5(&state->sample_count, 0);
}