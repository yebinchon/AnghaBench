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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int) ; 
 char* FUNC3 (char*,char*,char*) ; 
 char const* FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 

__attribute__((used)) static char *FUNC8(const char *s) {
	int modlen, len;
	const char *kstr;
	char *ret, *klass, *module;
	if (!FUNC7 (s, "_TtC", 4)) {
		int off = 4;
		while (s[off] && (s[off] < '0' || s[off] > '9')) {
			off++;
		}
		len = FUNC0 (s + off);
		modlen = FUNC6 (s + off);
		if (!len || len >= modlen) {
			return FUNC5 (s);
		}
		module = FUNC2 (FUNC4 (s + off), len);
		int skip = (FUNC4 (s + off) - s) + len;
		if (s[skip] == 'P') {
			skip++;
			len = FUNC0 (s + skip);
			skip = (FUNC4 (s + skip) - s) + len;
		}
		kstr = s + skip;
		len = FUNC0 (kstr);
		modlen = FUNC6 (kstr);
		if (!len || len >= modlen) {
			FUNC1 (module);
			return FUNC5 (s);
		}
		klass = FUNC2 (FUNC4 (kstr), len);
		ret = FUNC3 ("%s.%s", module, klass);
		FUNC1 (module);
		FUNC1 (klass);
	} else {
		ret = FUNC5 (s);
	}
	return ret;
}