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
struct thread {int dummy; } ;
typedef  int ssize_t ;
typedef  size_t __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
#define  PAT_PIPE 130 
#define  PAT_SEQ 129 
#define  PAT_ZERO 128 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,size_t const) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (void const*,size_t,int,int /*<<< orphan*/ ) ; 
 int pattern ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static ssize_t
FUNC4(struct thread *ignore, const void *buf, size_t nbytes)
{
	const __u8 *p;
	__u8 expected;
	ssize_t ret;
	size_t len;

	(void)ignore;

	switch (pattern) {
	case PAT_ZERO:
		expected = 0;
		for (p = buf, len = 0; len < nbytes; ++p, ++len)
			if (*p)
				goto invalid;
		break;

	case PAT_SEQ:
		for (p = buf, len = 0; len < nbytes; ++p, ++len)
			if (*p != len % 63) {
				expected = len % 63;
				goto invalid;
			}
		break;

	case PAT_PIPE:
		ret = FUNC3(buf, nbytes, 1, stdout);
		if (ret > 0)
			FUNC1(stdout);
		break;

invalid:
		FUNC0("bad OUT byte %zd, expected %02x got %02x\n",
		    len, expected, *p);
		for (p = buf, len = 0; len < nbytes; ++p, ++len) {
			if (0 == (len % 32))
				FUNC2(stderr, "%4zd:", len);
			FUNC2(stderr, " %02zx", *p);
			if (31 == (len % 32))
				FUNC2(stderr, "\n");
		}
		FUNC1(stderr);
		errno = EILSEQ;
		return -1;
	}

	return len;
}