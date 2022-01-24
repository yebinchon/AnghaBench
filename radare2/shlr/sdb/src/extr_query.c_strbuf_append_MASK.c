#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int size; char* buf; } ;
typedef  TYPE_1__ StrBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static StrBuf* FUNC3(StrBuf *sb, const char *str, const int nl) {
	if (!sb || !str || nl < 0) {
		return sb;
	}
	int len = FUNC2 (str);
	if ((sb->len + len + 2) >= sb->size) {
		int newsize = sb->size + len + 256;
		char *b = FUNC1 (sb->buf, newsize);
		/// TODO perform free and force all callers to update the ref?
		if (!b) {
			return NULL;
		}
		sb->buf = b;
		sb->size = newsize;
	}
	if (sb->buf && str) {
		FUNC0 (sb->buf + sb->len, str, len);
		sb->len += len;
	}
#if NEWLINE_AFTER_QUERY
	if (sb->buf && nl) {
		sb->buf[sb->len++] = '\n';
		len++;
	}
#endif
	if (sb->buf) {
		sb->buf[sb->len] = 0;
	}
	return sb;
}