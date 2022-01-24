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
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int,unsigned long) ; 

void FUNC4(void *buf, unsigned int len,
				unsigned long data)
{
	switch (len) {
	case 1:
		break;
	case 2:
		data = FUNC0(data);
		break;
	case 4:
		data = FUNC1(data);
		break;
	default:
		data = FUNC2(data);
	}

	FUNC3(buf, len, data);
}