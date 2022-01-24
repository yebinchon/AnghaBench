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
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(void *user, const char *input) {
	char *buf = FUNC3 (input);
	int len = FUNC2 (buf);
	FUNC1 (buf, len);
	FUNC0 (buf);
	return 0;
}