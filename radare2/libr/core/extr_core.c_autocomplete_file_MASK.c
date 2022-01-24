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
typedef  int /*<<< orphan*/  RLineCompletion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static void FUNC4(RLineCompletion *completion, const char *str) {
	FUNC1 (str);
	char *pipe = FUNC3 (str, '>');

	if (pipe) {
		str = FUNC2 (pipe + 1);
	}
	if (str && !*str) {
		FUNC0 (completion, str, "./");
	} else {
		FUNC0 (completion, str, str);
	}

}