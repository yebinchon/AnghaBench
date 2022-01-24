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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char const**,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 char* FUNC11 (char const*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int FUNC14(RParse *p, const char *data, char *str) {
	int i, n;
	char w0[32];
	char w1[32];
	char w2[32];
	char w3[32];
	char *buf, *ptr, *optr, *num;

	// malloc can be slow here :?
	buf = FUNC11 (data);
	if (!buf) {
		return false;
	}
	FUNC6 (buf);

	ptr = FUNC9 (buf, '#');
	if (ptr) {
		*ptr = 0;
		FUNC5 (buf);
	}
	if (*buf == '.' || buf[FUNC12(buf)-1] == ':') {
		FUNC1 (buf);
		FUNC10 (str, data);
		return true;
	}
	FUNC4 (buf, '$', 0);
	FUNC4 (buf, '%', 0);
	FUNC4 (buf, '\t', ' ');
	FUNC4 (buf, '(', '[');
	FUNC4 (buf, ')', ']');
	ptr = FUNC9 (buf, '[');
	if (ptr) {
		*ptr = 0;
		num = (char*)FUNC3 (buf, ' ');
		if (!num) {
			num = (char *)FUNC3 (buf, ',');
		}
		if (num) {
			n = FUNC0 (num+1);
			*ptr = '[';
			FUNC2 (num+1, ptr, FUNC12 (ptr)+1);
			ptr = (char*)FUNC3 (buf, ']');
			if (n && ptr) {
				char *rest = FUNC11 (ptr+1);
				if (n > 0) {
					FUNC8 (ptr, "+%d]%s", n, rest);
				} else {
					FUNC8 (ptr, "%d]%s", n, rest);
				}
				FUNC1 (rest);
			}
		} else {
			*ptr = '[';
		}
	}

	if (*buf) {
		*w0 = *w1 = *w2 = *w3 = 0;
		ptr = FUNC9 (buf, ' ');
		if (!ptr) {
			ptr = FUNC9 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
			FUNC13 (w0, buf, sizeof(w0) - 1);
			FUNC13 (w1, ptr, sizeof(w1) - 1);

			optr = ptr;
			ptr = FUNC9 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC13 (w1, optr, sizeof(w1)-1);
				FUNC13 (w2, ptr, sizeof(w2)-1);
				ptr = FUNC9 (ptr, ',');
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						;
					}
					FUNC13 (w2, optr, sizeof(w2)-1);
					FUNC13 (w3, ptr, sizeof(w3)-1);
				}
			}
		}
		{
			const char *wa[] = { w0, w1, w2, w3 };
			int nw = 0;
			for (i=0; i<4; i++) {
				if (wa[i][0] != '\0') {
					nw++;
				}
			}
			FUNC7 (nw, wa, str);
		}
	}
	FUNC1 (buf);
	return true;
}