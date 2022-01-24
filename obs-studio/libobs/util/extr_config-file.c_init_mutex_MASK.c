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
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(config_t *config)
{
	pthread_mutexattr_t attr;
	if (FUNC1(&attr) != 0)
		return false;
	if (FUNC2(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return false;
	return FUNC0(&config->mutex, &attr) == 0;
}