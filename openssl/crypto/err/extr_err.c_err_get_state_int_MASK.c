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
typedef  int /*<<< orphan*/  ERR_STATE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPENSSL_INIT_BASE_ONLY ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CRYPTO_STRINGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err_delete_thread_state ; 
 int /*<<< orphan*/  err_do_init ; 
 int /*<<< orphan*/  err_init ; 
 int /*<<< orphan*/  err_thread_local ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

ERR_STATE *FUNC9(void)
{
    ERR_STATE *state;
    int saveerrno = FUNC6();

    if (!FUNC3(OPENSSL_INIT_BASE_ONLY, NULL))
        return NULL;

    if (!FUNC5(&err_init, err_do_init))
        return NULL;

    state = FUNC0(&err_thread_local);
    if (state == (ERR_STATE*)-1)
        return NULL;

    if (state == NULL) {
        if (!FUNC1(&err_thread_local, (ERR_STATE*)-1))
            return NULL;

        if ((state = FUNC4(sizeof(*state))) == NULL) {
            FUNC1(&err_thread_local, NULL);
            return NULL;
        }

        if (!FUNC7(NULL, NULL, err_delete_thread_state)
                || !FUNC1(&err_thread_local, state)) {
            FUNC2(state);
            FUNC1(&err_thread_local, NULL);
            return NULL;
        }

        /* Ignore failures from these */
        FUNC3(OPENSSL_INIT_LOAD_CRYPTO_STRINGS, NULL);
    }

    FUNC8(saveerrno);
    return state;
}