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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int WSZ ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char const**,char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

__attribute__((used)) static int FUNC15(RParse *p, const char *data, char *str) {
	int i, len = FUNC13 (data);
	char w0[WSZ];
	char w1[WSZ];
	char w2[WSZ];
	char w3[WSZ];
	char w4[WSZ];
	char w5[WSZ];
	char *buf, *ptr, *optr;

	if (!FUNC10 (data, "jr ra")) {
		FUNC11 (str, "return");
		return true;
	}

	// malloc can be slow here :?
	if (!(buf = FUNC2 (len + 1))) {
		return false;
	}
	FUNC4 (buf, data, len + 1);

	FUNC6 (buf, '(', ',');
	FUNC6 (buf, ')', ' ');
	FUNC7 (buf);
	if (*buf) {
		w0[0] = '\0';
		w1[0] = '\0';
		w2[0] = '\0';
		w3[0] = '\0';
		w4[0] = '\0';
		ptr = FUNC9 (buf, ' ');
		if (!ptr) {
			ptr = FUNC9 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				//nothing to see here
			}
			FUNC14 (w0, buf, WSZ - 1);
			FUNC14 (w1, ptr, WSZ - 1);

			optr = ptr;
			ptr = FUNC9 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					//nothing to see here
				}
				FUNC14 (w1, optr, WSZ - 1);
				FUNC14 (w2, ptr, WSZ - 1);
				optr = ptr;
				ptr = FUNC9 (ptr, ',');
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						//nothing to see here
					}
					FUNC14 (w2, optr, WSZ - 1);
					FUNC14 (w3, ptr, WSZ - 1);
					optr = ptr;
					// bonus
					ptr = FUNC9 (ptr, ',');
					if (ptr) {
						*ptr = '\0';
						for (++ptr; *ptr == ' '; ptr++) {
							//nothing to see here
						}
						FUNC14 (w3, optr, WSZ - 1);
						FUNC14 (w4, ptr, WSZ - 1);
						optr = ptr;
						// bonus
						ptr = FUNC9 (ptr, ',');
						if (ptr) {
							*ptr = '\0';
							for (++ptr; *ptr == ' '; ptr++) {
								//nothing to see here
							}
							FUNC14 (w4, optr, WSZ - 1);
							FUNC14 (w5, ptr, WSZ - 1);
						}
					}
				}
			}
		} else {
			FUNC14 (w0, buf, WSZ - 1);
		}
		{
			const char *wa[] = { w0, w1, w2, w3, w4, w5 };
			int nw = 0;
			for (i = 0; i < 4; i++) {
				if (wa[i][0] != '\0') {
					nw++;
				}
			}
			FUNC8 (nw, wa, str);
			{
				char *p = FUNC12 (str);
				p = FUNC5 (p, "+ -", "- ", 0);
				p = FUNC5 (p, " + ]", "]  ", 0);
				//  p = r_str_replace (p, "if (r0 == r0) trap", "trap            ", 0);
#if EXPERIMENTAL_ZERO
				p = r_str_replace (p, "zero", "0", 0);
				if (!memcmp (p, "0 = ", 4)) *p = 0; // nop
#endif
				if (!FUNC10 (w1, w2)) {
					char a[64], b[64];
#define REPLACE(x,y) do { \
		int snprintf_len1_ = snprintf (a, 64, x, w1, w1); \
		int snprintf_len2_ = snprintf (b, 64, y, w1); \
		if (snprintf_len1_ < 64 && snprintf_len2_ < 64) { \
			p = r_str_replace (p, a, b, 0); \
		} \
	} while (0)

					// TODO: optimize
					REPLACE ("%s = %s +", "%s +=");
					REPLACE ("%s = %s -", "%s -=");
					REPLACE ("%s = %s &", "%s &=");
					REPLACE ("%s = %s |", "%s |=");
					REPLACE ("%s = %s ^", "%s ^=");
					REPLACE ("%s = %s >>", "%s >>=");
					REPLACE ("%s = %s <<", "%s <<=");
				}
				p = FUNC5 (p, ":", "0000", 0);
				FUNC11 (str, p);
				FUNC1 (p);
			}
		}
	}
	FUNC1 (buf);
	return true;
}