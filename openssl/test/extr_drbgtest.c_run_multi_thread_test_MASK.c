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
typedef  int time_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (unsigned char*,int) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ multi_thread_rand_bytes_succeeded ; 
 scalar_t__ multi_thread_rand_priv_bytes_succeeded ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    unsigned char buf[256];
    time_t start = FUNC6(NULL);
    RAND_DRBG *public = NULL, *private = NULL;

    if (!FUNC5(public = FUNC1())
            || !FUNC5(private = FUNC0())) {
        multi_thread_rand_bytes_succeeded = 0;
        return;
    }
    FUNC2(private, 1);
    FUNC2(public, 1);

    do {
        if (FUNC3(buf, sizeof(buf)) <= 0)
            multi_thread_rand_bytes_succeeded = 0;
        if (FUNC4(buf, sizeof(buf)) <= 0)
            multi_thread_rand_priv_bytes_succeeded = 0;
    }
    while(FUNC6(NULL) - start < 5);
}