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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) inline static void
FUNC5(zend_string **buffer, size_t *pos, char add)
{
	if ((*pos + 1) >= FUNC1(*buffer)) {
		FUNC0(("%s(): ereallocing buffer to %d bytes\n", FUNC3(), FUNC1(*buffer)));
		*buffer = FUNC4(*buffer, FUNC1(*buffer) << 1, 0);
	}
	FUNC0(("sprintf: appending '%c', pos=\n", add, *pos));
	FUNC2(*buffer)[(*pos)++] = add;
}