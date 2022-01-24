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
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Halt ; 
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  OP_ResultRow ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Vdbe *v, int regResult){
  int addr;
  FUNC1(v, OP_ResultRow, regResult, 1);
  addr = FUNC2(v, OP_IfPos, 1, FUNC3(v)+2, 1);
  FUNC0(v);
  FUNC1(v, OP_Halt, 0, 0);
  return addr;
}