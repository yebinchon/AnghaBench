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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (char const*,scalar_t__) ; 

__attribute__((used)) static size_t FUNC2(const char *str, size_t str_length) /* {{{ */
{
	const char *ptr = str;
	uint32_t remaining = str_length;
	size_t ret;

	while (remaining > 0) {
		ret = FUNC1(ptr, remaining);
		if (!ret) {
			FUNC0();
			return str_length - remaining;
		}
		ptr += ret;
		remaining -= ret;
	}

	return str_length;
}