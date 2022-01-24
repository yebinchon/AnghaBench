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
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static char* FUNC4(const char *filepath) {
	filepath = FUNC1 (filepath);
	if (FUNC2 (filepath) && !FUNC3 (filepath)) {
		return FUNC0 (filepath);
	}
	return NULL;
}