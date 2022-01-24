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
typedef  long uint32 ;

/* Variables and functions */
 long old_salt ; 
 long saltbits ; 

__attribute__((used)) static void
FUNC0(long salt)
{
	uint32		obit,
				saltbit;
	int			i;

	if (salt == old_salt)
		return;
	old_salt = salt;

	saltbits = 0L;
	saltbit = 1;
	obit = 0x800000;
	for (i = 0; i < 24; i++)
	{
		if (salt & saltbit)
			saltbits |= obit;
		saltbit <<= 1;
		obit >>= 1;
	}
}