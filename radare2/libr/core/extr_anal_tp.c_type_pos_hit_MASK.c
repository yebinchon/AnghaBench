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
typedef  scalar_t__ ut64 ;
struct TYPE_3__ {int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_NAME_SP ; 
 int FUNC0 (int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(RAnal *anal, Sdb *trace, bool in_stack, int idx, int size, const char *place) {
	if (in_stack) {
		const char *sp_name = FUNC1 (anal->reg, R_REG_NAME_SP);
		ut64 sp = FUNC2 (anal->reg, sp_name);
		ut64 write_addr = FUNC4 (trace, FUNC3 ("%d.mem.write", idx), 0);
		return (write_addr == sp + size);
	}
	return FUNC0 (idx, place);
}