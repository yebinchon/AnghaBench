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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  O_WRONLY ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static bool FUNC6(bool enoent_ok, char *filename, char *fmt, va_list ap)
{
	char buf[4096];
	int fd;
	ssize_t written;
	int buf_len;

	buf_len = FUNC4(buf, sizeof(buf), fmt, ap);
	if (buf_len < 0) {
		FUNC2("vsnprintf failed: %s\n",
		    FUNC3(errno));
		return false;
	}
	if (buf_len >= sizeof(buf)) {
		FUNC2("vsnprintf output truncated\n");
		return false;
	}

	fd = FUNC1(filename, O_WRONLY);
	if (fd < 0) {
		if ((errno == ENOENT) && enoent_ok)
			return true;
		return false;
	}
	written = FUNC5(fd, buf, buf_len);
	if (written != buf_len) {
		if (written >= 0) {
			FUNC2("short write to %s\n", filename);
			return false;
		} else {
			FUNC2("write to %s failed: %s\n",
				filename, FUNC3(errno));
			return false;
		}
	}
	if (FUNC0(fd) != 0) {
		FUNC2("close of %s failed: %s\n",
			filename, FUNC3(errno));
		return false;
	}
	return true;
}