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
struct decl_info {int dummy; } ;
struct signal_info {int signalling; struct decl_info func; int /*<<< orphan*/  mutex; int /*<<< orphan*/  callbacks; int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (struct signal_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct signal_info* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct decl_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct signal_info *FUNC8(struct decl_info *info)
{
	pthread_mutexattr_t attr;
	struct signal_info *si;

	if (FUNC6(&attr) != 0)
		return NULL;
	if (FUNC7(&attr, PTHREAD_MUTEX_RECURSIVE) != 0)
		return NULL;

	si = FUNC2(sizeof(struct signal_info));

	si->func = *info;
	si->next = NULL;
	si->signalling = false;
	FUNC3(si->callbacks);

	if (FUNC5(&si->mutex, &attr) != 0) {
		FUNC1(LOG_ERROR, "Could not create signal");

		FUNC4(&si->func);
		FUNC0(si);
		return NULL;
	}

	return si;
}