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
typedef  int /*<<< orphan*/  thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destructor_run_count ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_local_destructor ; 
 int /*<<< orphan*/  thread_local_key ; 
 int /*<<< orphan*/  thread_local_thread_cb ; 
 int /*<<< orphan*/  thread_local_thread_cb_ok ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
    thread_t thread;
    void *ptr = NULL;

    if (!FUNC5(FUNC2(&thread_local_key,
                                            thread_local_destructor)))
        return 0;

    ptr = FUNC1(&thread_local_key);
    if (!FUNC4(ptr)
        || !FUNC5(FUNC6(&thread, thread_local_thread_cb))
        || !FUNC5(FUNC7(thread))
        || !FUNC3(thread_local_thread_cb_ok, 1))
        return 0;

#if defined(OPENSSL_THREADS) && !defined(CRYPTO_TDEBUG)

    ptr = CRYPTO_THREAD_get_local(&thread_local_key);
    if (!TEST_ptr_null(ptr))
        return 0;

# if !defined(OPENSSL_SYS_WINDOWS)
    if (!TEST_int_eq(destructor_run_count, 1))
        return 0;
# endif
#endif

    if (!FUNC5(FUNC0(&thread_local_key)))
        return 0;
    return 1;
}