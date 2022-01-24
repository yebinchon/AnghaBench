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
typedef  char ut8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int*) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const char *file) {
	if (!FUNC6 (file, "-")) {
		int sz = 0;
		ut8 *buf = (ut8 *)FUNC2 (&sz);
		char *ff = FUNC3 ("malloc://%d", sz);
		int res = FUNC5 (ff, buf, sz);
		FUNC0 (ff);
		FUNC0 (buf);
		return res;
	}
	return FUNC1 (file)
		? FUNC4 (file)
		: FUNC5 (file, NULL, -1);
}