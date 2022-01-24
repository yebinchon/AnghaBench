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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool FUNC5 (const char *filename) {
	FUNC0 (filename && *filename, false);
	if (FUNC1 (filename, "file://")) {
		filename += FUNC2 ("file://");
	}
	const char * peekaboo = (!FUNC3 (filename, "nocache://", 10))
		? NULL : FUNC4 (filename, "://");
	return (!peekaboo || (peekaboo - filename) > 10);
}