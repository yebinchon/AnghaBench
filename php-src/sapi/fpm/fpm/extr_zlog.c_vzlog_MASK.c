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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int MAX_BUF_LENGTH ; 
 int STDERR_FILENO ; 
 int ZLOG_HAVE_ERRNO ; 
 int ZLOG_LEVEL_MASK ; 
 int ZLOG_NOTICE ; 
 int ZLOG_SYSLOG ; 
 int errno ; 
 scalar_t__ external_logger ; 
 int /*<<< orphan*/  launched ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (char*,size_t,char*,char*,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/ * syslog_priorities ; 
 scalar_t__ FUNC3 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,size_t) ; 
 size_t FUNC5 (char const*,int,int,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int zlog_fd ; 
 int zlog_level ; 
 size_t zlog_limit ; 
 size_t FUNC7 (char*,size_t,int) ; 

void FUNC8(const char *function, int line, int flags, const char *fmt, va_list args) /* {{{ */
{
	char buf[MAX_BUF_LENGTH];
	size_t buf_size = MAX_BUF_LENGTH;
	size_t len = 0;
	int truncated = 0;
	int saved_errno;

	if (external_logger) {
		FUNC6(flags, buf, buf_size, fmt, args);
	}

	if ((flags & ZLOG_LEVEL_MASK) < zlog_level) {
		return;
	}

	saved_errno = errno;
	len = FUNC5(function, line, flags, buf, buf_size, zlog_fd == ZLOG_SYSLOG);

	if (len > buf_size - 1) {
		truncated = 1;
	} else {
		len += FUNC3(buf + len, buf_size - len, fmt, args);
		if (len >= buf_size) {
			truncated = 1;
		}
	}

	if (!truncated) {
		if (flags & ZLOG_HAVE_ERRNO) {
			len += FUNC1(buf + len, buf_size - len,
					": %s (%d)", FUNC2(saved_errno), saved_errno);
			if (len >= zlog_limit) {
				truncated = 1;
			}
		}
	}

	if (truncated) {
		len = FUNC7(buf, zlog_limit < buf_size ? zlog_limit : buf_size, 1);
	}

#ifdef HAVE_SYSLOG_H
	if (zlog_fd == ZLOG_SYSLOG) {
		buf[len] = '\0';
		php_syslog(syslog_priorities[zlog_level], "%s", buf);
		buf[len++] = '\n';
	} else
#endif
	{
		buf[len++] = '\n';
		FUNC4(zlog_fd > -1 ? zlog_fd : STDERR_FILENO, buf, len);
	}

	if (zlog_fd != STDERR_FILENO && zlog_fd != -1 &&
			!launched && (flags & ZLOG_LEVEL_MASK) >= ZLOG_NOTICE) {
		FUNC4(STDERR_FILENO, buf, len);
	}
}