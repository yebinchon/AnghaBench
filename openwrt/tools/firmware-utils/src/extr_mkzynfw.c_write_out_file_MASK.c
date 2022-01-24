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
struct csum_state {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FILE_BUF_LEN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,size_t,struct csum_state*) ; 

int
FUNC6(FILE *outfile, char *name, size_t len, struct csum_state *css)
{
	char buf[FILE_BUF_LEN];
	size_t buflen = sizeof(buf);
	FILE *f;
	int res;

	FUNC0(2, "writing out file, name=%s, len=%zu",
		name, len);

	errno = 0;
	f = FUNC3(name,"r");
	if (errno) {
		FUNC1("unable to open file: %s", name);
		return -1;
	}

	while (len > 0) {
		if (len < buflen)
			buflen = len;

		/* read data from source file */
		errno = 0;
		FUNC4(buf, buflen, 1, f);
		if (errno != 0) {
			FUNC1("unable to read from file: %s",name);
			res = -1;
			break;
		}

		res = FUNC5(outfile, buf, buflen, css);
		if (res)
			break;

		len -= buflen;
	}

	FUNC2(f);
	return res;
}