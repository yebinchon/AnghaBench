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
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(const char *msg, void *p) {
	char res[128];
	FUNC2 (true);
	FUNC1 (false);
	FUNC3 (msg);
	res[0] =0;
	if (!FUNC0 (res, sizeof (res), 0, NULL)) {
		res[0] = 0;
	}
	return FUNC4 (res);
}