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
typedef  int /*<<< orphan*/  w4 ;
typedef  int /*<<< orphan*/  w3 ;
typedef  int /*<<< orphan*/  w2 ;
typedef  int /*<<< orphan*/  w1 ;
typedef  int /*<<< orphan*/  w0 ;
typedef  int /*<<< orphan*/  RParse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char const**,char*) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int FUNC14(RParse *p, const char *data, char *str) {
	int i, len = FUNC12 (data);
	char *buf, *ptr, *optr, *ptr2;
	char w0[64];
	char w1[64];
	char w2[64];
	char w3[64];
	char w4[64];

	if (!FUNC9 (data, "invalid")
	||  !FUNC9 (data, "nop")
	||  !FUNC9 (data, "DEPRECATED")) {
		str[0] = 0;
		return true;
	}

	// malloc can be slow here :?
	if (!(buf = FUNC2 (len + 1))) {
		return false;
	}
	FUNC4 (buf, data, len + 1);

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
			FUNC13 (w0, buf, sizeof (w0) - 1);
			w0[sizeof(w0)-1] = '\0';
			FUNC13 (w1, ptr, sizeof (w1) - 1);
			w1[sizeof(w1)-1] = '\0';

			optr=ptr;
			ptr2 = FUNC8 (ptr, '}');
			if (ptr2) {
				ptr = ptr2 + 1;
			}
			ptr = FUNC8 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC13 (w1, optr, sizeof (w1) - 1);
				w1[sizeof(w1)-1] = '\0';
				FUNC13 (w2, ptr, sizeof (w2) - 1);
				w2[sizeof(w2)-1] = '\0';
				optr=ptr;
				ptr = FUNC8 (ptr, ',');
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						;
					}
					FUNC13 (w2, optr, sizeof (w2) - 1);
					w2[sizeof(w2)-1] = '\0';
					FUNC13 (w3, ptr, sizeof (w3) - 1);
					w3[sizeof(w3)-1] = '\0';
					optr=ptr;
// bonus
					ptr = FUNC8 (ptr, ',');
					if (ptr) {
						*ptr = '\0';
						for (++ptr; *ptr == ' '; ptr++) {
							;
						}
						FUNC13 (w3, optr, sizeof (w3) - 1);
						w3[sizeof(w3)-1] = '\0';
						FUNC13 (w4, ptr, sizeof (w4) - 1);
						w4[sizeof(w4)-1] = '\0';
					}
				}
			}
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
	p = FUNC5 (p, "+ -", "- ", 0);
#if EXPERIMENTAL_ZERO
	p = r_str_replace (p, "zero", "0", 0);
	if (!memcmp (p, "0 = ", 4)) *p = 0; // nop
#endif
	if (!FUNC9 (w1, w2)) {
		char a[32], b[32];
#define REPLACE(x,y) do { \
		int snprintf_len1_ = snprintf (a, 32, x, w1, w1); \
		int snprintf_len2_ = snprintf (b, 32, y, w1); \
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
	FUNC10 (str, p);
	FUNC1 (p);
}
		}
	}
	FUNC1 (buf);
	return true;
}