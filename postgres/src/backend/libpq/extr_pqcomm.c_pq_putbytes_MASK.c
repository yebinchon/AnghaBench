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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DoingCopyOut ; 
 int PqCommBusy ; 
 int FUNC1 (char const*,size_t) ; 

int
FUNC2(const char *s, size_t len)
{
	int			res;

	/* Should only be called by old-style COPY OUT */
	FUNC0(DoingCopyOut);
	/* No-op if reentrant call */
	if (PqCommBusy)
		return 0;
	PqCommBusy = true;
	res = FUNC1(s, len);
	PqCommBusy = false;
	return res;
}