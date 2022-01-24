#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int iTable; int /*<<< orphan*/  op; int /*<<< orphan*/  op2; } ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_Skip ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TK_REGISTER ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(Expr *pExpr, int iReg){
  Expr *p = FUNC1(pExpr);
  p->op2 = p->op;
  p->op = TK_REGISTER;
  p->iTable = iReg;
  FUNC0(p, EP_Skip);
}