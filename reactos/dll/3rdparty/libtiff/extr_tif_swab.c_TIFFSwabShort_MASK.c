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
typedef  int /*<<< orphan*/  uint16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1(uint16* wp)
{
	register unsigned char* cp = (unsigned char*) wp;
	unsigned char t;
	FUNC0(sizeof(uint16)==2);
	t = cp[1]; cp[1] = cp[0]; cp[0] = t;
}