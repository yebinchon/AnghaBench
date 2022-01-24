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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) inline static void
FUNC6(zend_string **buffer, size_t *pos, char *add, size_t len)
{
	if ((*pos + len) >= FUNC1(*buffer)) {
		size_t nlen = FUNC1(*buffer);

		FUNC0(("%s(): ereallocing buffer to %d bytes\n", FUNC3(), FUNC1(*buffer)));
		do {
			nlen = nlen << 1;
		} while ((*pos + len) >= nlen);
		*buffer = FUNC5(*buffer, nlen, 0);
	}
	FUNC0(("sprintf: appending \"%s\", pos=\n", add, *pos));
	FUNC4(FUNC2(*buffer) + (*pos), add, len);
	*pos += len;
}