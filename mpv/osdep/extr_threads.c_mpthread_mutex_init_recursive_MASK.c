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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(pthread_mutex_t *mutex)
{
    pthread_mutexattr_t attr;
    FUNC2(&attr);
    FUNC3(&attr, PTHREAD_MUTEX_RECURSIVE);
    int r = FUNC0(mutex, &attr);
    FUNC1(&attr);
    return r;
}