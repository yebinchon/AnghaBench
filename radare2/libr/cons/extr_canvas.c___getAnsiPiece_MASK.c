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
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(const char *p, char *chr) {
	const char *q = p;
	if (!p) {
		return 0;
	}
	while (p && *p && *p != '\n' && ! FUNC0 (p)) {
		p++;
	}
	if (chr) {
		*chr = *p;
	}
	return p - q;
}