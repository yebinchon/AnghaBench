#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ nn_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_ERRORCHECK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5 (nn_mutex_t *self)
{
    int rc;
    pthread_mutexattr_t attr;

    FUNC3(&attr);
    rc = FUNC4(&attr, PTHREAD_MUTEX_ERRORCHECK);
    FUNC0 (rc == 0, rc);
    rc = FUNC1 (&self->mutex, NULL);
    FUNC0 (rc == 0, rc);
    FUNC2(&attr);
}