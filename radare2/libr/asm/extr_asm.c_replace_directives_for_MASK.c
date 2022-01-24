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
typedef  int /*<<< orphan*/  RStrBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static char *FUNC8(char *str, char *token) {
	RStrBuf *sb = FUNC5 ("");
	char *p = NULL;
	char *q = str;
	bool changes = false;
	for (;;) {
		if (q) {
			p = FUNC7 (q, token);
		}
		if (p) {
			char *nl = FUNC6 (p, '\n');
			if (nl) {
				*nl ++ = 0;
			}
			char _ = *p;
			*p = 0;
			FUNC1 (sb, q);
			*p = _;
			FUNC2 (sb, "<{%s}>\n", p + 1);
			q = nl;
			changes = true;
		} else {
			if (q) {
				FUNC1 (sb, q);
			}
			break;
		}
	}
	if (changes) {
		FUNC0 (str);
		return FUNC3 (sb);
	}
	FUNC4 (sb);
	return str;
}