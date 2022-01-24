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
typedef  int /*<<< orphan*/  st32 ;

/* Variables and functions */
 int err ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static st32 FUNC5 (const char *input) {
	st32 res;
	err = false;
	if (!input || (FUNC4 (input) < 2) || (input[FUNC4(input) - 2] != ']' || !FUNC2 (input, "!"))) {
		err = true;
		return 0;
	}
	char *temp = FUNC3 (input, FUNC4 (input) - 2);
	if (!temp) {
		err = true;
		return 0;
	}
	res = FUNC1 (temp);
	FUNC0 (temp);
	return res;
}