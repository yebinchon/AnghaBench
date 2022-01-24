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
typedef  int /*<<< orphan*/  RParse ;

/* Variables and functions */
 int WSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char const**,char*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(RParse *p, const char *data, char *str) {
	int i, len = FUNC6 (data);
	char w0[WSZ];
	char w1[WSZ];
	char w2[WSZ];
	char w3[WSZ];
	char w4[WSZ];
	char *buf, *ptr, *optr, *par;

	// malloc can be slow here :?
	if (!(buf = FUNC1 (len + 1))) {
		return false;
	}
	FUNC2 (buf, data, len + 1);

	FUNC3 (buf);
	if (*buf) {
		w0[0] = '\0';
		w1[0] = '\0';
		w2[0] = '\0';
		w3[0] = '\0';
		w4[0] = '\0';
		ptr = FUNC5 (buf, ' ');
		if (!ptr) {
			ptr = FUNC5 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				//nothing to see here
			}
			FUNC7 (w0, buf, WSZ - 1);
			FUNC7 (w1, ptr, WSZ - 1);

			optr = ptr;
			par = FUNC5 (ptr, '(');
			if (par && FUNC5 (ptr, ',') > par) {
				ptr = FUNC5 (ptr, ')');
				if (ptr) {
					ptr = FUNC5 (ptr, ',');
				}
			} else {
				ptr = FUNC5 (ptr, ',');
			}
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					//nothing to see here
				}
				FUNC7 (w1, optr, WSZ - 1);
				FUNC7 (w2, ptr, WSZ - 1);
				optr = ptr;
				par = FUNC5 (ptr, '(');
				if (par && FUNC5 (ptr, ',') > par) {
					ptr = FUNC5 (ptr, ')');
					if (ptr) {
						ptr = FUNC5 (ptr, ',');
					}
				} else {
					ptr = FUNC5 (ptr, ',');
				}
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						//nothing to see here
					}
					FUNC7 (w2, optr, WSZ - 1);
					FUNC7 (w3, ptr, WSZ - 1);
					optr = ptr;
					// bonus
					par = FUNC5 (ptr, '(');
					if (par && FUNC5 (ptr, ',') > par) {
						ptr = FUNC5 (ptr, ')');
						if (ptr) {
							ptr = FUNC5 (ptr, ',');
						}
					} else {
						ptr = FUNC5 (ptr, ',');
					}
					if (ptr) {
						*ptr = '\0';
						for (++ptr; *ptr == ' '; ptr++) {
							//nothing to see here
						}
						FUNC7 (w3, optr, WSZ - 1);
						FUNC7 (w4, ptr, WSZ - 1);
					}
				}
			}
		} else {
			FUNC7 (w0, buf, WSZ - 1);
		}
		{
			const char *wa[] = { w0, w1, w2, w3, w4 };
			int nw = 0;
			for (i = 0; i < 5; i++) {
				if (wa[i][0] != '\0') {
					nw++;
				}
			}
			FUNC4 (nw, wa, str);
		}
	}
	FUNC0 (buf);
	return true;
}