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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MUTEX_TEXTURE1 ; 
 int /*<<< orphan*/  MUTEX_TEXTURE2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* tex_mutexes ; 

__attribute__((used)) static inline bool FUNC2(void)
{
	DWORD pid = FUNC0();

	tex_mutexes[0] = FUNC1(MUTEX_TEXTURE1, pid);
	if (!tex_mutexes[0]) {
		return false;
	}

	tex_mutexes[1] = FUNC1(MUTEX_TEXTURE2, pid);
	if (!tex_mutexes[1]) {
		return false;
	}

	return true;
}