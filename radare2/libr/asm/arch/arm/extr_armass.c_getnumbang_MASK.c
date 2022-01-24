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
typedef  int ut64 ;

/* Variables and functions */
 int err ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static ut64 FUNC5(const char *str) {
	ut64 res;

	if (!str || !*str || !FUNC2 (str, "!")) {
		err = true;
		return 0;
	}
	char *temp = FUNC3 (str, FUNC4 (str) - 1);
	if (!temp) {
		return -1;
	}
	err = false;
	res = FUNC1 (temp);
	FUNC0 (temp);
	return res; // err propagates
}