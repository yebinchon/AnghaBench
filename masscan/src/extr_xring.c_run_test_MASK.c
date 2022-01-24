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
typedef  int /*<<< orphan*/  uint64_t ;
struct Test {unsigned int const producer_started; unsigned int const producer_done; int not_active; int /*<<< orphan*/  total_count; int /*<<< orphan*/  consumer_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Test*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct Test*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  test_consumer_thread ; 
 int /*<<< orphan*/  test_producer_thread ; 

__attribute__((used)) static uint64_t
FUNC3(struct Test *test)
{
    unsigned i;
    const unsigned THREADS = 1;

    FUNC0(test, 0, sizeof(*test));

    /* Generate producer threads */
    for (i=0; i<THREADS; i++) {
        FUNC1(test_producer_thread, 0, test);
    }

    /* Wait for threads to start */
    while (test->producer_started < THREADS)
        FUNC2(10);
    /* Now start consuming */
    FUNC1(test_consumer_thread, 0, test);

    /* Wait for producer threads to end */
    while (test->producer_done < THREADS)
        FUNC2(10);


    /* Tell consumer thread to end */
    test->not_active = 1;


    /* Wait for consumer thread to end */
    while (!test->consumer_done)
        FUNC2(10);

    return test->total_count;
}