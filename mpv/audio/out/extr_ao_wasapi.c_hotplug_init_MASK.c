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
struct wasapi_state {int /*<<< orphan*/  log; } ;
struct ao {int /*<<< orphan*/  log; struct wasapi_state* priv; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wasapi_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ao*,int) ; 

__attribute__((used)) static int FUNC7(struct ao *ao)
{
    FUNC2(ao, "Hotplug init\n");
    struct wasapi_state *state = ao->priv;
    state->log = ao->log;
    FUNC0(NULL, COINIT_MULTITHREADED);
    HRESULT hr = FUNC6(ao, true);
    FUNC1(hr);

    return 0;
    exit_label:
    FUNC3(state, "Error setting up audio hotplug: %s\n", FUNC5(hr));
    FUNC4(ao);
    return -1;
}