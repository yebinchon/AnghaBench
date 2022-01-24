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
typedef  unsigned int uint32 ;
struct cdb {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (struct cdb*,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct cdb *c, char *key, unsigned int len, uint32 pos)
{
	char buf[32];
	unsigned int n;

	while (len > 0) {
		n = sizeof(buf);
		if (n > len)
			n = len;
		if (FUNC0(c, buf, n, pos) == -1)
			return -1;
		if (FUNC1(buf, key, n))
			return 0;
		pos += n;
		key += n;
		len -= n;
	}
	return 1;
}