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
struct info_cb_states_st {int where; int /*<<< orphan*/  statestr; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int SSL_CB_HANDSHAKE_DONE ; 
 int SSL_CB_LOOP ; 
 int SSL_ST_ACCEPT ; 
 int SSL_ST_CONNECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int info_cb_failed ; 
 size_t info_cb_offset ; 
 struct info_cb_states_st** info_cb_states ; 
 size_t info_cb_this_state ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const SSL *s, int where, int ret)
{
    struct info_cb_states_st *state = info_cb_states[info_cb_offset];

    /* We do not ever expect a connection to fail in this test */
    if (!FUNC3(ret == 0)) {
        info_cb_failed = 1;
        return;
    }

    /*
     * Do some sanity checks. We never expect these things to happen in this
     * test
     */
    if (!FUNC3((FUNC1(s) && (where & SSL_ST_CONNECT) != 0))
            || !FUNC3(!FUNC1(s) && (where & SSL_ST_ACCEPT) != 0)
            || !FUNC5(state[++info_cb_this_state].where, 0)) {
        info_cb_failed = 1;
        return;
    }

    /* Now check we're in the right state */
    if (!FUNC6((where & state[info_cb_this_state].where) != 0)) {
        info_cb_failed = 1;
        return;
    }
    if ((where & SSL_CB_LOOP) != 0
            && !FUNC4(FUNC7(FUNC2(s),
                            state[info_cb_this_state].statestr), 0)) {
        info_cb_failed = 1;
        return;
    }

    /*
     * Check that, if we've got SSL_CB_HANDSHAKE_DONE we are not in init
     */
    if ((where & SSL_CB_HANDSHAKE_DONE)
            && FUNC0((SSL *)s) != 0) {
        info_cb_failed = 1;
        return;
    }
}