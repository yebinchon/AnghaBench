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
 unsigned long BUFLEN ; 
 unsigned long MAX_LEN ; 
 unsigned long MAX_OFFSET ; 
 int /*<<< orphan*/  POISON ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,unsigned long,unsigned long,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (unsigned long) ; 
 char* FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(void)
{
	char *src, *dst, *redzone, *fill;
	unsigned long len, src_off, dst_off;
	unsigned long i;

	src = FUNC4(BUFLEN, BUFLEN);
	dst = FUNC4(BUFLEN, BUFLEN);
	redzone = FUNC3(BUFLEN);
	fill = FUNC3(BUFLEN);

	if (!src || !dst || !redzone || !fill) {
		FUNC2(stderr, "malloc failed\n");
		FUNC1(1);
	}

	FUNC5(redzone, POISON, BUFLEN);

	/* Fill with sequential bytes */
	for (i = 0; i < BUFLEN; i++)
		fill[i] = i & 0xff;

	for (len = 1; len < MAX_LEN; len++) {
		for (src_off = 0; src_off < MAX_OFFSET; src_off++) {
			for (dst_off = 0; dst_off < MAX_OFFSET; dst_off++) {
				FUNC0(src, dst, src_off, dst_off, len,
				       redzone, fill);
			}
		}
	}

	return 0;
}