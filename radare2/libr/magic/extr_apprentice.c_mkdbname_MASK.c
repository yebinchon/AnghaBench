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
 int MAXPATHLEN ; 
 char const* ext ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static char *FUNC4(const char *fn, int strip) {
	char *buf = NULL;
	int fnlen, extlen;
	if (strip) {
		const char *p;
		if ((p = FUNC3 (fn, '/')) != NULL) {
			fn = ++p;
		}
	}
	fnlen = FUNC2 (fn);
	extlen = FUNC2 (ext);
	if (fnlen + extlen + 1 > MAXPATHLEN) {
		return NULL;
	}
	buf = FUNC0 (fnlen + extlen + 1);
	if (buf) {
		FUNC1 (buf, fn, fnlen);
		FUNC1 (buf+fnlen, ext, extlen);
		buf[fnlen+extlen] = 0;
	}
	return buf;
}