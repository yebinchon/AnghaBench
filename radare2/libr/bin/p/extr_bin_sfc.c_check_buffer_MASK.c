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
typedef  int ut64 ;
typedef  scalar_t__ ut16 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(RBuffer *b) {
	ut16 cksum1, cksum2;
	ut64 length = FUNC1 (b);
	// FIXME: this was commented out because it always evaluates to false.
	//        Need to be fixed by someone with SFC knowledge
	// if ((length & 0x8000) == 0x200) {
	// 	buf_hdr += 0x200;
	// }
	if (length < 0x8000) {
		return false;
	}
	//determine if ROM is headered, and add a 0x200 gap if so.
	cksum1 = FUNC0 (b, 0x7fdc);
	cksum2 = FUNC0 (b, 0x7fde);

	if (cksum1 == (ut16)~cksum2) {
		return true;
	}
	if (length < 0xffee) {
		return false;
	}
	cksum1 = FUNC0 (b, 0xffdc);
	cksum2 = FUNC0 (b, 0xffde);
	return (cksum1 == (ut16)~cksum2);
}