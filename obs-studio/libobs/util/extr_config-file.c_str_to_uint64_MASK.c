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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline uint64_t FUNC1(const char *str)
{
	if (!str || !*str)
		return 0;

	if (str[0] == '0' && str[1] == 'x')
		return FUNC0(str + 2, NULL, 16);
	else
		return FUNC0(str, NULL, 10);
}