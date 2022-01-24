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
typedef  int /*<<< orphan*/  wchar_t ;
struct wasapi_state {scalar_t__ share_mode; int /*<<< orphan*/  pSessionControl; } ;
struct ao {struct wasapi_state* priv; } ;
typedef  enum aocontrol { ____Placeholder_aocontrol } aocontrol ;

/* Variables and functions */
#define  AOCONTROL_UPDATE_STREAM_TITLE 128 
 scalar_t__ AUDCLNT_SHAREMODE_EXCLUSIVE ; 
 int CONTROL_FALSE ; 
 int CONTROL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ao*,int,void*) ; 
 int FUNC7 (struct ao*,int,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ao *ao, enum aocontrol cmd, void *arg)
{
    struct wasapi_state *state = ao->priv;

    // common to exclusive and shared
    switch (cmd) {
    case AOCONTROL_UPDATE_STREAM_TITLE:
        if (!state->pSessionControl)
            return CONTROL_FALSE;

        wchar_t *title = FUNC4(NULL, (char*)arg);
        wchar_t *tmp = NULL;
        // There is a weird race condition in the IAudioSessionControl itself --
        // it seems that *sometimes* the SetDisplayName does not take effect and
        // it still shows the old title. Use this loop to insist until it works.
        do {
            FUNC2(state->pSessionControl, title, NULL);

            FUNC3(tmp, FUNC0(tmp));
            FUNC1(state->pSessionControl, &tmp);
        } while (FUNC8(title, tmp));
        FUNC3(tmp, FUNC0(tmp));
        FUNC5(title);
        return CONTROL_OK;
    }

    return state->share_mode == AUDCLNT_SHAREMODE_EXCLUSIVE ?
        FUNC6(ao, cmd, arg) :
        FUNC7(ao, cmd, arg);
}