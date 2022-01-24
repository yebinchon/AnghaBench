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
typedef  scalar_t__ ut32 ;
struct TYPE_3__ {unsigned int length; int /*<<< orphan*/  syntax; } ;
typedef  TYPE_1__ tms320_dasm_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * ins_buff ; 
 scalar_t__ ins_buff_len ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 size_t FUNC3 (char*) ; 
 char FUNC4 (unsigned char) ; 

int FUNC5(tms320_dasm_t *dasm, const ut8 *buf, int len) {
	unsigned int next_ins_pos;
	char *ins_decoded;
	size_t i, ins_decoded_len;

	ins_buff = (ut8 *)buf;
	ins_buff_len = (ut32)len;

	next_ins_pos = 0;

	// decode instruction
	ins_decoded = FUNC0(0, &next_ins_pos);
	dasm->length = next_ins_pos;
	if (!ins_decoded) {
		return 0;
	}

	// opcode length
	dasm->length = next_ins_pos;
	ins_decoded_len = FUNC3(ins_decoded);
	for (i = 0; i < ins_decoded_len; i++) {
		{
			ins_decoded[i] = FUNC4 ((unsigned char)ins_decoded[i]);
		}
	}
	FUNC2 (dasm->syntax, sizeof(dasm->syntax), "%s", ins_decoded);
	FUNC1 (ins_decoded);
	
	return next_ins_pos;
}