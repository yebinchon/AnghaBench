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

/* Variables and functions */
 int BUFLEN ; 
 unsigned long FUNC0 (char*,char*,unsigned long) ; 
 int MIN_REDZONE ; 
 int /*<<< orphan*/  POISON ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(char *src, char *dst, unsigned long src_off,
		   unsigned long dst_off, unsigned long len, void *redzone,
		   void *fill)
{
	char *srcp, *dstp;
	unsigned long ret;
	unsigned long i;

	srcp = src + MIN_REDZONE + src_off;
	dstp = dst + MIN_REDZONE + dst_off;

	FUNC4(src, POISON, BUFLEN);
	FUNC4(dst, POISON, BUFLEN);
	FUNC3(srcp, fill, len);

	ret = FUNC0(dstp, srcp, len);
	if (ret && ret != (unsigned long)dstp) {
		FUNC5("(%p,%p,%ld) returned %ld\n", dstp, srcp, len, ret);
		FUNC1();
	}

	if (FUNC2(dstp, srcp, len)) {
		FUNC5("(%p,%p,%ld) miscompare\n", dstp, srcp, len);
		FUNC5("src: ");
		for (i = 0; i < len; i++)
			FUNC5("%02x ", srcp[i]);
		FUNC5("\ndst: ");
		for (i = 0; i < len; i++)
			FUNC5("%02x ", dstp[i]);
		FUNC5("\n");
		FUNC1();
	}

	if (FUNC2(dst, redzone, dstp - dst)) {
		FUNC5("(%p,%p,%ld) redzone before corrupted\n",
		       dstp, srcp, len);
		FUNC1();
	}

	if (FUNC2(dstp+len, redzone, dst+BUFLEN-(dstp+len))) {
		FUNC5("(%p,%p,%ld) redzone after corrupted\n",
		       dstp, srcp, len);
		FUNC1();
	}
}