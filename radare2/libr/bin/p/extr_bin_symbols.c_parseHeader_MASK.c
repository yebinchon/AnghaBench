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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  b ;
struct TYPE_3__ {int magic; int valid; int size; void* slotsize; void* unk1; void* unk0; int /*<<< orphan*/ * uuid; void* version; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SymbolsHeader ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SymbolsHeader FUNC3(RBuffer *buf) {
	ut8 b[64];
	SymbolsHeader sh = { 0 };
	(void)FUNC0 (buf, 0, b, sizeof (b));
	sh.magic = FUNC2 (b);
	sh.version = FUNC2 (b + 4);
	sh.valid = sh.magic == 0xff01ff02;
	int i;
	for (i = 0; i < 16; i++) {
		sh.uuid[i] = b[24 + i];
	}
	sh.unk0 = FUNC1 (b + 0x28);
	sh.unk1 = FUNC1 (b + 0x2c); // is slotsize + 1 :?
	sh.slotsize = FUNC1 (b + 0x2e);
	sh.size = 0x40;
	return sh;
}