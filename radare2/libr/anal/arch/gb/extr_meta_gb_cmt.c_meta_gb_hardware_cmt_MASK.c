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
typedef  int ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_META_TYPE_COMMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC1(RAnal *a, const ut8 hw, ut64 addr) {
	switch(hw)
	{
		case 0:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "JOYPAD");				//Moar context for this (which Key is affected)
			break;
		case 1:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "Serial transfer data");
			break;
		case 2:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "Serial transfer data - Ctl");
			break;
		case 4:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "DIV");
			break;
		case 5:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "TIMA");
			break;
		case 6:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "TMA");
			break;
		case 7:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "TAC");
			break;
		case 0x0f:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "Interrupt Flag");
			break;
		case 0x10:
		case 0x11:
		case 0x12:
		case 0x13:
		case 0x14:
		case 0x16:
		case 0x17:
		case 0x18:
		case 0x19:
		case 0x1a:
		case 0x1b:
		case 0x1c:
		case 0x1d:
		case 0x1e:
		case 0x20:
		case 0x21:
		case 0x22:
		case 0x23:
		case 0x24:
		case 0x25:
		case 0x26:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "SOUND");
			break;
		case 0x30:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "Wave Pattern RAM/SOUND");
			break;
		case 0x40:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "LCDC");
			break;
		case 0x41:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "LCDC - STAT");
			break;
		case 0x42:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "LCDC - Scroll y");
			break;
		case 0x43:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "LCDC - Scroll x");
			break;
		case 0x44:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "LCDC - y cord");
			break;
		case 0x45:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "LCDC - y cord cmp");
			break;
		case 0x46:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "DMA");
			break;
		case 0xff:
			FUNC0(a, R_META_TYPE_COMMENT, addr, "Interrupt Enable Flag");

	}
}