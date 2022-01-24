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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_charset ; 
 int /*<<< orphan*/  internal_encoding ; 

__attribute__((used)) static char *FUNC2(void) {
	if (FUNC0(internal_encoding) && FUNC0(internal_encoding)[0]) {
		return FUNC0(internal_encoding);
	} else if (FUNC1(default_charset) && FUNC1(default_charset)[0] ) {
		return FUNC1(default_charset);
	}
	return NULL;
}