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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  enum test_return { ____Placeholder_test_return } test_return ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_CMD_QUITQ ; 
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int allow_closed_read ; 
 int /*<<< orphan*/  binary_hickup_recv_verification_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int hickup_thread_running ; 
 void* FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static enum test_return FUNC12(void)
{
    size_t buffersize = 65 * 1024;
    void *buffer = FUNC2(buffersize);
    int ii;

    pthread_t tid;
    int ret;
    allow_closed_read = true;
    hickup_thread_running = true;
    if ((ret = FUNC3(&tid, NULL,
                              binary_hickup_recv_verification_thread, NULL)) != 0) {
        FUNC0(stderr, "Can't create thread: %s\n", FUNC8(ret));
        FUNC1(buffer);
        return TEST_FAIL;
    }

    /* Allow the thread to start */
    FUNC11(250);

    FUNC7((int)FUNC10(NULL));
    for (ii = 0; ii < 2; ++ii) {
        FUNC9(buffer, buffersize);
    }

    /* send quitq to shut down the read thread ;-) */
    size_t len = FUNC5(buffer, buffersize, PROTOCOL_BINARY_CMD_QUITQ,
                             NULL, 0, NULL, 0);
    FUNC6(buffer, len, false);

    FUNC4(tid, NULL);
    FUNC1(buffer);
    return TEST_PASS;
}