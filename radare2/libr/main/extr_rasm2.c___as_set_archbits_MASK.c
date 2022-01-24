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
struct TYPE_3__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ RAsmState ;

/* Variables and functions */
 int /*<<< orphan*/  R_SYS_ARCH ; 
 int R_SYS_BITS ; 
 int R_SYS_BITS_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(RAsmState *as) {
	FUNC3 (as->a, R_SYS_ARCH);
	FUNC1 (as->anal, R_SYS_ARCH);

	int sysbits = (R_SYS_BITS & R_SYS_BITS_64)? 64: 32;
	FUNC2 (as->a, sysbits);
	FUNC0 (as->anal, sysbits);
}