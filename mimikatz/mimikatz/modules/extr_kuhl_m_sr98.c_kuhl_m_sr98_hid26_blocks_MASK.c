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
typedef  int USHORT ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int* PULONGLONG ;

/* Variables and functions */
 int FUNC0 (int) ; 

void FUNC1(ULONG blocks[4], UCHAR FacilityCode, USHORT CardNumber, PULONGLONG pWiegand)
{
	UCHAR i, s1, s2;
	ULONGLONG Wiegand = 0x2004000000 | (FacilityCode << 17) | (CardNumber << 1);
	for(i = s1 = s2 = 0; i < 12; i++)
	{
		s1 ^= (Wiegand >> (i + 12 + 1)) & 1;
		s2 ^= (Wiegand >> (i + 1)) & 1;
	}
	Wiegand |= ((s1 & 1) << 25) | (!(s2 & 1));
	if(pWiegand)
		*pWiegand = Wiegand;
	blocks[0] = 0x90625062; // RF/50, FSK2, [1-3], inverted
	blocks[1] = (0x1d << 24) | (FUNC0((UCHAR) (Wiegand >> 40)) << 16) | (FUNC0((UCHAR) (Wiegand >> 36)) << 8) | FUNC0((UCHAR) (Wiegand >> 32));
	blocks[2] = (FUNC0((UCHAR) (Wiegand >> 28)) << 24) | (FUNC0((UCHAR) (Wiegand >> 24)) << 16) | (FUNC0((UCHAR) (Wiegand >> 20)) << 8) | FUNC0((UCHAR) (Wiegand >> 16));
	blocks[3] = (FUNC0((UCHAR) (Wiegand >> 12)) << 24) | (FUNC0((UCHAR) (Wiegand >> 8)) << 16) | (FUNC0((UCHAR) (Wiegand >> 4)) << 8) | FUNC0((UCHAR) (Wiegand));
}