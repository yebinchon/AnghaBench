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
typedef  int /*<<< orphan*/  w3 ;
typedef  int /*<<< orphan*/  w2 ;
typedef  int /*<<< orphan*/  w1 ;
typedef  int /*<<< orphan*/  w0 ;
typedef  int /*<<< orphan*/  RParse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char const**,char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int FUNC11(RParse *p, const char *data, char *str) {
	char w0[256], w1[256], w2[256], w3[256];
	int i, len = FUNC9 (data);
	char *buf, *ptr, *optr;

	if (len >= sizeof (w0)) {
		return false;
	}
	// malloc can be slow here :?
	if (!(buf = FUNC2 (len + 1))) {
		return false;
	}
	FUNC3 (buf, data, len + 1);
	if (*buf) {
		*w0 = *w1 = *w2 = *w3 = '\0';
		ptr = FUNC6 (buf, ' ');
		if (!ptr) {
			ptr = FUNC6 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
			FUNC10 (w0, buf, sizeof (w0) - 1);
			FUNC10 (w1, ptr, sizeof (w1) - 1);

			optr = ptr;
			if (*ptr == '(') {
				ptr = FUNC6 (ptr+1, ')');
			}
			if (ptr && *ptr == '[') {
				ptr = FUNC6 (ptr+1, ']');
			}
			if (ptr && *ptr == '{') {
				ptr = FUNC6 (ptr+1, '}');
			}
			if (!ptr) {
				FUNC0 ("Unbalanced bracket\n");
				FUNC1(buf);
				return false;
			}
			ptr = FUNC6 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC10 (w1, optr, sizeof (w1) - 1);
				FUNC10 (w2, ptr, sizeof (w2) - 1);
				optr = ptr;
				ptr = FUNC6 (ptr, ',');
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						;
					}
					FUNC10 (w2, optr, sizeof (w2) - 1);
					FUNC10 (w3, ptr, sizeof (w3) - 1);
				}
			}
		}
		{
			const char *wa[] = { w0, w1, w2, w3 };
			int nw = 0;
			for (i = 0; i < 4; i++) {
				if (wa[i][0]) {
					nw++;
				}
			}
			FUNC5 (nw, wa, str);
		}
	}
	{
		char *s = FUNC8 (str);
		s = FUNC4 (s, "+ -", "- ", 1);
		s = FUNC4 (s, "- -", "+ ", 1);
		FUNC7 (str, s);
		FUNC1 (s);
	}
	FUNC1 (buf);
	return true;
}