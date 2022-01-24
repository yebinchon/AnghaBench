#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_2__ {int /*<<< orphan*/  thread_id; } ;
typedef  TYPE_1__ LIBEVENT_THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void *(*func)(void *), void *arg) {
    pthread_attr_t  attr;
    int             ret;

    FUNC2(&attr);

    if ((ret = FUNC3(&((LIBEVENT_THREAD*)arg)->thread_id, &attr, func, arg)) != 0) {
        FUNC1(stderr, "Can't create thread: %s\n",
                FUNC4(ret));
        FUNC0(1);
    }
}