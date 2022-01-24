#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_child; } ;

/* Variables and functions */
 scalar_t__ ZLOG_DEBUG ; 
 int ZLOG_LEVEL_MASK ; 
 TYPE_1__ fpm_globals ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ ) ; 
 char** level_names ; 
 scalar_t__ FUNC2 (char*,size_t,char*,char*,...) ; 
 scalar_t__ zlog_level ; 
 size_t FUNC3 (struct timeval*,char*,size_t) ; 

__attribute__((used)) static size_t FUNC4(
		const char *function, int line, int flags,
		char *buf, size_t buf_size, int use_syslog) /* {{{ */
{
	struct timeval tv;
	size_t len = 0;

#ifdef HAVE_SYSLOG_H
	if (use_syslog /* && !fpm_globals.is_child */) {
		if (zlog_level == ZLOG_DEBUG) {
			len += snprintf(buf, buf_size, "[%s] %s(), line %d: ",
					level_names[flags & ZLOG_LEVEL_MASK], function, line);
		} else {
			len += snprintf(buf, buf_size, "[%s] ", level_names[flags & ZLOG_LEVEL_MASK]);
		}
	} else
#endif
	{
		if (!fpm_globals.is_child) {
			FUNC1(&tv, 0);
			len = FUNC3(&tv, buf, buf_size);
		}
		if (zlog_level == ZLOG_DEBUG) {
			if (!fpm_globals.is_child) {
				len += FUNC2(buf + len, buf_size - len, "%s: pid %d, %s(), line %d: ",
						level_names[flags & ZLOG_LEVEL_MASK], FUNC0(), function, line);
			} else {
				len += FUNC2(buf + len, buf_size - len, "%s: %s(), line %d: ",
						level_names[flags & ZLOG_LEVEL_MASK], function, line);
			}
		} else {
			len += FUNC2(buf + len, buf_size - len, "%s: ",
					level_names[flags & ZLOG_LEVEL_MASK]);
		}
	}

	return len;
}