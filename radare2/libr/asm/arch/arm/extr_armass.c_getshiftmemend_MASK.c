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
typedef  int st32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static st32 FUNC5(const char *input) {
	st32 res;
	if (!input || !*input || !FUNC1 (input, "]")) {
		return -1;
	}

	char *temp = FUNC2 (input, FUNC3 (input) - 1);
	if (!temp) {
		return -1;
	}
	res = FUNC4 (temp);
	FUNC0 (temp);
	return res;
}