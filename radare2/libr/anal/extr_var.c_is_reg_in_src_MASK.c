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
struct TYPE_3__ {scalar_t__* src; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bool FUNC2 (const char *regname, RAnal *anal, RAnalOp *op) {
	const char* opsreg0 = op->src[0] ? FUNC1 (anal, op->src[0]) : NULL;
	const char* opsreg1 = op->src[1] ? FUNC1 (anal, op->src[1]) : NULL;
	const char* opsreg2 = op->src[2] ? FUNC1 (anal, op->src[2]) : NULL;
	return (FUNC0 (regname, opsreg0)) || (FUNC0 (regname, opsreg1)) || (FUNC0 (regname, opsreg2));
}