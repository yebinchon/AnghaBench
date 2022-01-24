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
struct signal_handler {int refs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  global_callbacks_mutex; int /*<<< orphan*/ * first; } ;
typedef  struct signal_handler signal_handler_t ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct signal_handler*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct signal_handler* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

signal_handler_t *FUNC7(void)
{
	struct signal_handler *handler = FUNC2(sizeof(struct signal_handler));
	handler->first = NULL;
	handler->refs = 1;

	pthread_mutexattr_t attr;
	if (FUNC5(&attr) != 0)
		return NULL;
	if (FUNC6(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return NULL;

	if (FUNC4(&handler->mutex, NULL) != 0) {
		FUNC1(LOG_ERROR, "Couldn't create signal handler mutex!");
		FUNC0(handler);
		return NULL;
	}
	if (FUNC4(&handler->global_callbacks_mutex, &attr) != 0) {
		FUNC1(LOG_ERROR, "Couldn't create signal handler global "
				"callbacks mutex!");
		FUNC3(&handler->mutex);
		FUNC0(handler);
		return NULL;
	}

	return handler;
}