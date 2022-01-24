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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int,int) ; 
 char* FUNC3 (char const*,int) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(const char *key, const char *val, int mode, int last) {
	if (FUNC0 (mode)) {
		if (!val) {
			val = "";
		}
		char *encval = FUNC3 (val, -1);
		if (encval) {
			char *qs = FUNC4 ("\"%s\"", encval);
			FUNC2 (key, qs, mode, last);
			FUNC1 (encval);
			FUNC1 (qs);
		}
	} else {
		FUNC2 (key, val, mode, last);
	}
}