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
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 size_t FUNC1 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static inline size_t FUNC3(const char *str, size_t str_length)
{
#ifdef PHP_WRITE_STDOUT
	int ret;

	ret = write(STDOUT_FILENO, str, str_length);
	if (ret <= 0) return 0;
	return ret;
#else
	size_t ret;

	ret = FUNC1(str, 1, FUNC0(str_length, 16384), stdout);
	return ret;
#endif
}