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
typedef  int /*<<< orphan*/  w2 ;
typedef  int /*<<< orphan*/  w1 ;
typedef  int /*<<< orphan*/  w0 ;
typedef  int /*<<< orphan*/  RParse ;
typedef  int /*<<< orphan*/  ADDR_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC5 (int,char const**,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int FUNC9(RParse *p, const char *data, char *str) {
	char w0[256], w1[256], w2[256];
	int i, len = FUNC7 (data);
	char *buf, *ptr, *optr;
	ADDR_TYPE atype;

	if (len >= sizeof (w0)) {
		return false;
	}
	// malloc can be slow here :?
	if (!(buf = FUNC2 (len + 1))) {
		return false;
	}
	FUNC3 (buf, data, len + 1);

	if (*buf) {
		atype = FUNC0 (buf);
		FUNC4 (buf, '(', ' ');
		FUNC4 (buf, ')', ' ');
		*w0 = *w1 = *w2 = '\0';
		ptr = FUNC6 (buf, ' ');
		if (!ptr) {
			ptr = FUNC6 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
			FUNC8 (w0, buf, sizeof(w0) - 1);
			FUNC8 (w1, ptr, sizeof(w1) - 1);
			optr = ptr;
			ptr = FUNC6 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC8 (w1, optr, sizeof(w1) - 1);
				FUNC8 (w2, ptr, sizeof(w2) - 1);
			}
		} else {
			FUNC8 (w0, buf, sizeof(w0) - 1);
		}

		const char *wa[] = {w0, w1, w2};
		int nw = 0;
		for (i = 0; i < 3; i++) {
			if (wa[i][0]) {
				nw++;
			}
		}
		FUNC5 (nw, wa, str, atype);
	}

	FUNC1 (buf);

	return true;
}