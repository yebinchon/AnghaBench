#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  info; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ OP_TEST ; 
 scalar_t__ OP_TESTSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6 (FuncState *fs, expdesc *e) {
  Instruction *pc = FUNC3(fs, e->u.info);
  FUNC4(FUNC5(FUNC1(*pc)) && FUNC1(*pc) != OP_TESTSET &&
                                           FUNC1(*pc) != OP_TEST);
  FUNC2(*pc, !(FUNC0(*pc)));
}