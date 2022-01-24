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
struct cdb_make {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (struct cdb_make*,char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

int FUNC2(struct cdb_make *c, unsigned int keylen, unsigned int datalen)
{
	char buf[8];

	if (keylen > 0xffffffff) {
		errno = ENOMEM;
		return -1;
	}
	if (datalen > 0xffffffff) {
		errno = ENOMEM;
		return -1;
	}

	FUNC1(buf, keylen);
	FUNC1(buf + 4, datalen);
	if (FUNC0(c, buf, 8) != 0)
		return -1;
	return 0;
}