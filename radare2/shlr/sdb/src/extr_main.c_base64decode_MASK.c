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
 char* FUNC1 (char*,int*) ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static int FUNC4() {
	ut8 *out;
	int len, ret = 1;
	char *in = (char *) FUNC2 (&len);
	if (in) {
		out = FUNC1 (in, &len);
		if (out) {
			if (len >= 0) {
				FUNC3 (1, out, len);
				ret = 0;
			}
			FUNC0 (out);
		}
		FUNC0 (in);
	}
	return ret;
}