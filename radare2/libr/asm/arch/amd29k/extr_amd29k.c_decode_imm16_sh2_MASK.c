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
typedef  int /*<<< orphan*/  amd29k_instr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AMD29K_TYPE_IMM ; 
 int /*<<< orphan*/  AMD29K_TYPE_JMP ; 

__attribute__((used)) static void FUNC3(amd29k_instr_t* instruction, const ut8* buffer) {
	int word = (buffer[1] << 10) + (buffer[3] << 2);
	if (word & 0x20000) {
		word = (int)(0xfffc0000 | word);
	}
	FUNC2 (instruction, 0, word, FUNC0 (buffer) ? AMD29K_TYPE_JMP : AMD29K_TYPE_IMM);
	FUNC1 (instruction, 1);
	FUNC1 (instruction, 2);
	FUNC1 (instruction, 3);
	FUNC1 (instruction, 4);
	FUNC1 (instruction, 5);
}