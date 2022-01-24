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
typedef  int (* ASYNC_callback_fn ) (void*) ;
typedef  int /*<<< orphan*/  ASYNC_WAIT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int (*) (void*),void**) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int (*) (void*),void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (void*) ; 
 int FUNC10 (void*) ; 

__attribute__((used)) static int FUNC11(void)
{
    ASYNC_WAIT_CTX *waitctx = NULL;
    int set_arg = 100;
    ASYNC_callback_fn get_callback;
    void *get_arg;
    int set_status = 1;

    if (       !FUNC7(1, 0)
            || (waitctx = FUNC3()) == NULL
            || FUNC4(waitctx, test_callback, (void*)&set_arg)
               != 1
            || FUNC1(waitctx, get_callback, &get_arg)
               != 1
            || test_callback != get_callback
            || get_arg != (void*)&set_arg
            || (*get_callback)(get_arg) != 1
            || FUNC5(waitctx, set_status) != 1
            || set_status != FUNC2(waitctx)) {
        FUNC8(stderr, "test_ASYNC_callback_status() failed\n");
        FUNC0(waitctx);
        FUNC6();
        return 0;
    }

    FUNC0(waitctx);
    FUNC6();
    return 1;

}