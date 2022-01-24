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
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static void FUNC4(const char *optarg)
{
	unsigned long offset;
	unsigned long size;
	char *p;

	p = FUNC3(optarg, ',');
	if (!p)
		p = FUNC3(optarg, '+');

	if (p == optarg) {
		offset = 0;
		size   = FUNC2(p + 1);
	} else if (p) {
		offset = FUNC2(optarg);
		if (p[1] == '\0')
			size = ULONG_MAX;
		else {
			size = FUNC2(p + 1);
			if (*p == ',') {
				if (size < offset)
					FUNC1("invalid range: %lu,%lu\n",
							offset, size);
				size -= offset;
			}
		}
	} else {
		offset = FUNC2(optarg);
		size   = 1;
	}

	FUNC0(offset, size);
}