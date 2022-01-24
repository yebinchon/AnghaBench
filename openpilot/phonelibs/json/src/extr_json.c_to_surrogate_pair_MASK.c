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
typedef  int uint16_t ;
typedef  int uchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(uchar_t unicode, uint16_t *uc, uint16_t *lc)
{
	uchar_t n;
	
	FUNC0(unicode >= 0x10000 && unicode <= 0x10FFFF);
	
	n = unicode - 0x10000;
	*uc = ((n >> 10) & 0x3FF) | 0xD800;
	*lc = (n & 0x3FF) | 0xDC00;
}