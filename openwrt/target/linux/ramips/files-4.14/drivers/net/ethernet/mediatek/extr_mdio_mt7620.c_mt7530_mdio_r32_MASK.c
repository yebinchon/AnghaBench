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
typedef  int u32 ;
typedef  int u16 ;
struct mt7620_gsw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mt7620_gsw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7620_gsw*,int,int,int) ; 

u32 FUNC2(struct mt7620_gsw *gsw, u32 reg)
{
	u16 high, low;

	FUNC1(gsw, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
	low = FUNC0(gsw, 0x1f, (reg >> 2) & 0xf);
	high = FUNC0(gsw, 0x1f, 0x10);

	return (high << 16) | (low & 0xffff);
}