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
 size_t FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static size_t FUNC2(const char *str, size_t str_length)
{
	const char *ptr = str;
	size_t remaining = str_length;
	size_t ret;

	while (remaining > 0) {
		ret = FUNC0(ptr, remaining);
		if (!ret) {
			FUNC1();
		}
		ptr += ret;
		remaining -= ret;
	}

	return str_length;
}