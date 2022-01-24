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
 scalar_t__ FUNC1 (char const*,int,char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5 (char**arg, char const*arguments) {
	size_t arglen = FUNC4 (arguments) + 1;
	char*tmp = FUNC2 (arglen);
	if (!FUNC1 (arguments, 1, tmp)) {
		FUNC0 (tmp); tmp = 0;
		return 0;
	} else {
		arg[0] = FUNC3 (tmp, FUNC4 (tmp) + 1); tmp = 0;
		tmp = FUNC2 (arglen);
		if (!FUNC1 (arguments, 2, tmp)) {
			FUNC0 (tmp); tmp = 0;
			return 1;
		} else {
			arg[1] = FUNC3 (tmp, FUNC4 (tmp) + 1); tmp = 0;
			tmp = FUNC2 (arglen + 1);
			if (!FUNC1 (arguments, 3, tmp)) {
				FUNC0 (tmp); tmp = 0;
				return 2;
			} else {
				arg[2] = FUNC3 (tmp, FUNC4 (tmp) + 1); tmp = 0;
				tmp = FUNC2 (arglen + 1);
				if (FUNC1 (arguments, 4, tmp)) {
					FUNC0 (tmp); tmp = 0;
					FUNC0 (arg[0]); arg[0] = 0;
					FUNC0 (arg[1]); arg[1] = 0;
					FUNC0 (arg[2]); arg[2] = 0;
					return 4;
				}
				FUNC0 (tmp); tmp = 0;
				return 3;
			}
		}
	}
}