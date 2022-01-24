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
 int SDB_LIKE_BASE64 ; 
 int SDB_LIKE_END ; 
 int SDB_LIKE_ICASE ; 
 int SDB_LIKE_START ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int,int) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 int FUNC5 (char const*,char const*,int) ; 

__attribute__((used)) static inline bool FUNC6(const char *a, const char *b, int blen, int flags) {
	const int start = flags & SDB_LIKE_START;
	const int end = flags & SDB_LIKE_END;
	char *aa = NULL;
	int alen;
	bool ret = false;
	if (!a || !b || blen < 0) {
		return 0;
	}
	if (flags & SDB_LIKE_BASE64) {
		aa = (char*)FUNC2 (a, &alen);
		if (!aa) {
			return 0;
		}
		a = (const char *)aa;
	} else {
		alen = FUNC3 (a);
	}
	if (blen <= alen) {
		if (flags & SDB_LIKE_ICASE) {
			if (start && end) ret = (alen==blen && !FUNC1 (a, b, blen, 0));
			else if (start) ret = !FUNC1 (a, b, blen, 0);
			else if (end) ret = !FUNC1 (a+(alen-blen), b, blen, 0);
			else ret = !FUNC1 (a, b, blen, 1);
		} else {
			if (start && end) ret = (alen==blen && !FUNC4 (a, b, blen));
			else if (start) ret = !FUNC4 (a, b, blen);
			else if (end) ret = !FUNC4 (a+(alen-blen), b, blen);
			else ret = FUNC5 (a, b, blen);
		}
	}
	FUNC0 (aa);
	return ret;
}