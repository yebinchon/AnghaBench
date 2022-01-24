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
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char const**,char*) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

__attribute__((used)) static int FUNC15(RParse *p, const char *data, char *str) {
	int i, len = FUNC12 (data);
	char w0[WSZ];
	char w1[WSZ];
	char w2[WSZ];
	char w3[WSZ];
	char w4[WSZ];
	char *buf, *ptr, *optr;

	if (!FUNC9 (data, "jr ra")) {
		FUNC10 (str, "ret");
		return true;
	}

	// malloc can be slow here :?
	if (!(buf = FUNC2 (len + 1))) {
		return false;
	}
	FUNC3 (buf, data, len+1);

	FUNC5 (buf, '(', ',');
	FUNC5 (buf, ')', ' ');
	FUNC6 (buf);

	if (*buf) {
		w0[0]='\0';
		w1[0]='\0';
		w2[0]='\0';
		w3[0]='\0';
		w4[0]='\0';
		ptr = FUNC8 (buf, ' ');
		if (!ptr) {
			ptr = FUNC8 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
			FUNC14 (w0, buf, WSZ - 1);
			FUNC14 (w1, ptr, WSZ - 1);

			optr=ptr;
			ptr = FUNC8 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC14 (w1, optr, WSZ - 1);
				FUNC14 (w2, ptr, WSZ - 1);
				optr=ptr;
				ptr = FUNC8 (ptr, ',');
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						;
					}
					FUNC14 (w2, optr, WSZ - 1);
					FUNC14 (w3, ptr, WSZ - 1);
					optr=ptr;
// bonus
					ptr = FUNC8 (ptr, ',');
					if (ptr) {
						*ptr = '\0';
						for (++ptr; *ptr == ' '; ptr++) {
							;
						}
						FUNC14 (w3, optr, WSZ - 1);
						FUNC14 (w4, ptr, WSZ - 1);
					}
				}
			}
		} else {
			FUNC14 (w0, buf, WSZ - 1);
		}
		{
			const char *wa[] = { w0, w1, w2, w3, w4 };
			int nw = 0;
			for (i=0; i<4; i++) {
				if (wa[i][0] != '\0') {
					nw++;
				}
			}
			FUNC7 (nw, wa, str);
{
	char *p = FUNC11 (str);
	p = FUNC4 (p, "+ -", "- ", 0);
	p = FUNC4 (p, " + ]", " + 0]", 0);

	p = FUNC4 (p, "zero", "0", 1);
	if (!FUNC13 (p, "0 = ", 4)) {
		*p = 0; // nop
	}
	if (!FUNC9 (w1, w2)) {
		char a[32], b[32];
#define REPLACE(x,y) do { \
		int snprintf_len1_ = snprintf (a, 32, x, w1, w1); \
		int snprintf_len2_ = snprintf (b, 32, y, w1);	\
		if (snprintf_len1_ < 32 && snprintf_len2_ < 32) { \
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
	p = FUNC4 (p, ":", "0000", 0);
	FUNC10 (str, p);
	FUNC1 (p);
}
		}
	}
	FUNC1 (buf);
	return true;
}