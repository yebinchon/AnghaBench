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
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (scalar_t__*,char*) ; 
 size_t FUNC3 (char const*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pager ; 
 scalar_t__ pager_pipe ; 
 int /*<<< orphan*/  prompt_str ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const*,size_t) ; 

__attribute__((used)) static size_t FUNC5(const char *str, size_t str_length) /* {{{ */
{
	if (FUNC0(prompt_str)) {
		FUNC4(FUNC0(prompt_str), str, str_length);
		return str_length;
	}

	if (FUNC0(pager) && *FUNC0(pager) && !pager_pipe) {
		pager_pipe = FUNC2(FUNC0(pager), "w");
	}
	if (pager_pipe) {
		return FUNC3(str, 1, FUNC1(str_length, 16384), pager_pipe);
	}

	return -1;
}