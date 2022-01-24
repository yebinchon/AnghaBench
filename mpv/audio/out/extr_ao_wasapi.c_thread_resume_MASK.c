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
struct wasapi_state {int /*<<< orphan*/  pAudioClient; } ;
struct ao {struct wasapi_state* priv; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wasapi_state*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ao*) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*) ; 

__attribute__((used)) static void FUNC7(struct ao *ao)
{
    struct wasapi_state *state = ao->priv;
    FUNC2(state, "Thread Resume\n");
    FUNC6(ao);
    FUNC5(ao);

    HRESULT hr = FUNC1(state->pAudioClient);
    if (FUNC0(hr)) {
        FUNC3(state, "IAudioClient_Start returned %s\n",
               FUNC4(hr));
    }
}