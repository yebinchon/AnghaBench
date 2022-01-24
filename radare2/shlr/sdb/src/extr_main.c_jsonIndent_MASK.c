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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (int*) ; 

__attribute__((used)) static int FUNC4() {
	int len;
	char *out;
	char *in = FUNC3 (&len);
	if (!in) {
		return 0;
	}
	out = FUNC2 (in, "  ");
	if (!out) {
		FUNC0 (in);
		return 1;
	}
	FUNC1 (out);
	FUNC0 (out);
	FUNC0 (in);
	return 0;
}