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
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 scalar_t__ DoingCopyOut ; 
 int EOF ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PqCommBusy ; 
 scalar_t__ FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char msgtype, const char *s, size_t len)
{
	if (DoingCopyOut || PqCommBusy)
		return 0;
	PqCommBusy = true;
	if (msgtype)
		if (FUNC1(&msgtype, 1))
			goto fail;
	if (FUNC0(FrontendProtocol) >= 3)
	{
		uint32		n32;

		n32 = FUNC2((uint32) (len + 4));
		if (FUNC1((char *) &n32, 4))
			goto fail;
	}
	if (FUNC1(s, len))
		goto fail;
	PqCommBusy = false;
	return 0;

fail:
	PqCommBusy = false;
	return EOF;
}