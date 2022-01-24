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
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const**,char*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(RParse *p, const char *data, char *str) {
	int i, len = FUNC9 (data);
	char w0[WSZ];
	char w1[WSZ];
	char w2[WSZ];
	char w3[WSZ];
	char w4[WSZ];
	char *buf, *ptr, *optr;

	if (!FUNC7 (data, "jr ra")) {
		FUNC8 (str, "ret");
		return true;
	}

	// malloc can be slow here :?
	if (!(buf = FUNC1 (len + 1))) {
		return false;
	}
	FUNC2 (buf, data, len+1);

	FUNC3 (buf, len+1, ".l", "", 1);
	FUNC3 (buf, len+1, ".w", "", 1);
	FUNC3 (buf, len+1, ".d", "", 1);
	FUNC3 (buf, len+1, ".b", "", 1);
	FUNC4 (buf);

	if (*buf) {
		w0[0]='\0';
		w1[0]='\0';
		w2[0]='\0';
		w3[0]='\0';
		w4[0]='\0';
		ptr = FUNC6 (buf, ' ');
		if (!ptr) {
			ptr = FUNC6 (buf, '\t');
		}
		if (ptr) {
			*ptr = '\0';
			for (++ptr; *ptr == ' '; ptr++) {
				;
			}
			FUNC10 (w0, buf, WSZ - 1);
			FUNC10 (w1, ptr, WSZ - 1);

			optr=ptr;
			ptr = FUNC6 (ptr, ',');
			if (ptr) {
				*ptr = '\0';
				for (++ptr; *ptr == ' '; ptr++) {
					;
				}
				FUNC10 (w1, optr, WSZ - 1);
				FUNC10 (w2, ptr, WSZ - 1);
				optr=ptr;
				ptr = FUNC6 (ptr, ',');
				if (ptr) {
					*ptr = '\0';
					for (++ptr; *ptr == ' '; ptr++) {
						;
					}
					FUNC10 (w2, optr, WSZ - 1);
					FUNC10 (w3, ptr, WSZ - 1);
					optr=ptr;
// bonus
					ptr = FUNC6 (ptr, ',');
					if (ptr) {
						*ptr = '\0';
						for (++ptr; *ptr == ' '; ptr++) {
							;
						}
						FUNC10 (w3, optr, WSZ - 1);
						FUNC10 (w4, ptr, WSZ - 1);
					}
				}
			}
		}
		{
			const char *wa[] = { w0, w1, w2, w3, w4 };
			int nw = 0;
			for (i = 0; i < 5; i++) {
				if (wa[i][0] != '\0') {
					nw++;
				}
			}
			FUNC5 (nw, wa, str);
			{
				char *pluseq = FUNC11 (str, "+ =");
				if (pluseq) {
					FUNC2 (pluseq, " +=", 3);
				}
			}
		}
	}
	FUNC0 (buf);
	return true;
}