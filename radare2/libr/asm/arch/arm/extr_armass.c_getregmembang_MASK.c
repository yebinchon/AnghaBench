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
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static st32 FUNC5(const char *input) {
	st32 res;
	if (!input || !*input || !FUNC2 (input, "!")) {
		return -1;
	}
	char *temp = FUNC3 (input, FUNC4 (input) - 1);
	if (!temp) {
		return -1;
	}
	res = FUNC1 (temp);
	FUNC0 (temp);
	return res;
}