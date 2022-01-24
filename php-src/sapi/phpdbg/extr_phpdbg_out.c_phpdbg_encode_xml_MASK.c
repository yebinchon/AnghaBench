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
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char **buf, char *msg, int msglen, int from, char *to) {
	int i;
	int tolen = to ? FUNC4(to) : 5;
	char *tmp = *buf = FUNC1(msglen * tolen);
	for (i = 0; i++ < msglen; msg++) {
		if (*msg == '&') {
			FUNC3(tmp, FUNC0("&amp;"));
			tmp += sizeof("&amp;") - 1;
		} else if (*msg == '<') {
			FUNC3(tmp, FUNC0("&lt;"));
			tmp += sizeof("&lt;") - 1;
		} else if (((int) *msg) == from) {
			FUNC3(tmp, to, tolen);
			tmp += tolen;
		} else {
			*tmp++ = *msg;
		}
	}

	{
		int len = tmp - *buf;
		*buf = FUNC2(*buf, len + 1);
		return len;
	}
}