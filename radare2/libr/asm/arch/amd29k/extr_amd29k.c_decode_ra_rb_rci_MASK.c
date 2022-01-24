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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  amd29k_instr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AMD29K_TYPE_IMM ; 
 int /*<<< orphan*/  AMD29K_TYPE_REG ; 

__attribute__((used)) static void FUNC3(amd29k_instr_t* instruction, const ut8* buffer) {
	FUNC2 (instruction, 0, buffer[1], AMD29K_TYPE_REG);
	FUNC2 (instruction, 1, buffer[2], AMD29K_TYPE_REG);
	if (FUNC0 (buffer)) {
		FUNC2 (instruction, 2, buffer[3], AMD29K_TYPE_IMM);
	} else {
		FUNC2 (instruction, 2, buffer[3], AMD29K_TYPE_REG);
	}
	FUNC1 (instruction, 3);
	FUNC1 (instruction, 4);
	FUNC1 (instruction, 5);
}