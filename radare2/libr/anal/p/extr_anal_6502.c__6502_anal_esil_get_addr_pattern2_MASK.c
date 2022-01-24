#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_3__ {int cycles; } ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC1(RAnalOp *op, const ut8* data, int len, char* addrbuf, int addrsize, char reg) {
	// turn off bits 5, 6 and 7
	if (len < 1) {
		return;
	}
	switch (data[0] & 0x1f) { // 0x1f = b00111111
	case 0x02: // op #$ff
		op->cycles = 2;
		FUNC0 (addrbuf, addrsize, "0x%02x", (len>1)? data[1]: 0);
		break;
	case 0x0a: //op a
		op->cycles = 2;
		FUNC0 (addrbuf, addrsize, "a");
		break;
	case 0x06: // op $ff
		op->cycles = 5;
		FUNC0 (addrbuf, addrsize, "0x%02x", (len>1)?data[1]:0);
		break;
	case 0x16: // op $ff,x
		op->cycles = 6;
		FUNC0 (addrbuf, addrsize, "%c,0x%02x,+", reg, (len >1)? data[1]:0);
		break;
	case 0x0e: // op $ffff
		op->cycles = 6;
		FUNC0 (addrbuf, addrsize, "0x%04x", (len>2)? data[1] | data[2] << 8: 0);
		break;
	case 0x1e: // op $ffff,x
		op->cycles = 7;
		FUNC0 (addrbuf, addrsize, "%c,0x%04x,+", reg, (len>2)? data[1] | data[2] << 8: 0);
		break;
	}
}