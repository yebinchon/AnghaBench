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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  show_bytes ; 
 int FUNC1 (char*,char*,unsigned long) ; 

__attribute__((used)) static int FUNC2(char *buffer, unsigned long value)
{
	unsigned long divisor = 1;
	char trailer = 0;
	int n;

	if (!show_bytes) {
		if (value > 1000000000UL) {
			divisor = 100000000UL;
			trailer = 'G';
		} else if (value > 1000000UL) {
			divisor = 100000UL;
			trailer = 'M';
		} else if (value > 1000UL) {
			divisor = 100;
			trailer = 'K';
		}
	}

	value /= divisor;
	n = FUNC1(buffer, "%ld",value);
	if (trailer) {
		buffer[n] = trailer;
		n++;
		buffer[n] = 0;
	}
	if (divisor != 1) {
		FUNC0(buffer + n - 2, buffer + n - 3, 4);
		buffer[n-2] = '.';
		n++;
	}
	return n;
}