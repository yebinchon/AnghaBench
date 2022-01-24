#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; char* buf; char* ptr; int ptrlen; } ;
typedef  TYPE_1__ SStrBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char const*) ; 

int FUNC5(SStrBuf *sb, const char *s) {
	int l = FUNC4 (s);
	if (l < 1) {
		return false;
	}
	if ((sb->len + l + 1) < sizeof (sb->buf)) {
		FUNC2 (sb->buf + sb->len, s, l + 1);
		FUNC0 (sb->ptr);
	} else {
		int newlen = sb->len + l + 128;
		char *p = sb->ptr;
		bool allocated = true;
		if (!sb->ptr) {
			p = FUNC1 (newlen);
			if (p && sb->len > 0) {
				FUNC2 (p, sb->buf, sb->len);
			}
		} else if (sb->len + l + 1 > sb->ptrlen) {
			p = FUNC3 (sb->ptr, newlen);
		} else {
			allocated = false;
		}
		if (allocated) {
			if (!p) return false;
			sb->ptr = p;
			sb->ptrlen = newlen;
		}
		FUNC2 (p + sb->len, s, l + 1);
	}
	sb->len += l;
	return true;
}