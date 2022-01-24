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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  amd29k_instr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AMD29K_TYPE_JMP ; 
 int /*<<< orphan*/  AMD29K_TYPE_REG ; 
 scalar_t__ UT64_MAX ; 

ut64 FUNC4(ut64 address, amd29k_instr_t* instruction) {
	if (!instruction) {
		return UT64_MAX;
	}
	int t0 = FUNC0 (instruction, 0);
	int t1 = FUNC0 (instruction, 1);
	int t2 = FUNC0 (instruction, 2);
	int t3 = FUNC0 (instruction, 3);
	int t4 = FUNC0 (instruction, 4);
	int t5 = FUNC0 (instruction, 5);

	int v0 = FUNC1 (instruction, 0);
	int v1 = FUNC1 (instruction, 1);
	if (FUNC2 (AMD29K_TYPE_JMP)) {
		return address + ((int) v0);
	} else if (FUNC3 (AMD29K_TYPE_REG, AMD29K_TYPE_JMP)) {
		return address + ((int) v1);
	}
	return UT64_MAX;
}