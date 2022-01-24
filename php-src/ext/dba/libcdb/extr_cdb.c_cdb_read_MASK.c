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
typedef  int /*<<< orphan*/  uint32 ;
struct cdb {int /*<<< orphan*/  fp; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ EPROTO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct cdb *c, char *buf, unsigned int len, uint32 pos)
{
	if (FUNC1(c->fp, pos, SEEK_SET) == -1) {
		errno = EPROTO;
		return -1;
	}
	while (len > 0) {
		int r;
		do {
			r = FUNC0(c->fp, buf, len);
		} while ((r == -1) && (errno == EINTR));
		if (r == -1)
			return -1;
		if (r == 0) {
			errno = EPROTO;
			return -1;
		}
		buf += r;
		len -= r;
	}
	return 0;
}