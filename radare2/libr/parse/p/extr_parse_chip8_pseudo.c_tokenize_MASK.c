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
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(const char* in, char* out[]) {
	int len = FUNC3 (in), count = 0, i = 0, tokenlen = 0, seplen = 0;
	char *token, *buf = (char*) in;
	const char* tokcharset = ", \t\n";

	while (i < len) {
		tokenlen = FUNC2 (buf, tokcharset);
		token = FUNC0 (tokenlen + 1, sizeof(char));
		FUNC1 (token, buf, tokenlen);
		out[count] = token;
		i += tokenlen;
		buf += tokenlen;
		count++;

		seplen = FUNC4 (buf, tokcharset);
		i += seplen;
		buf += seplen;
	}

	return count;
}