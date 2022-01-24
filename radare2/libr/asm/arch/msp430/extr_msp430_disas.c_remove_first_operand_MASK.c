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
struct msp430_cmd {int /*<<< orphan*/  operands; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct msp430_cmd *cmd)
{
	if (FUNC1(cmd->operands, ',')) {
		FUNC0(cmd->operands, FUNC1(cmd->operands, ',') + 2,
				FUNC2(FUNC1(cmd->operands, ',') + 2) + 1);
	}
}