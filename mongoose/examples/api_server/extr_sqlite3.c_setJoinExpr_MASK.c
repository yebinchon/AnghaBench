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
typedef  scalar_t__ i16 ;
struct TYPE_6__ {struct TYPE_6__* pRight; struct TYPE_6__* pLeft; scalar_t__ iRightJoinTable; } ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 int EP_Reduced ; 
 int EP_TokenOnly ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(Expr *p, int iTable){
  while( p ){
    FUNC2(p, EP_FromJoin);
    FUNC3( !FUNC0(p, EP_TokenOnly|EP_Reduced) );
    FUNC1(p);
    p->iRightJoinTable = (i16)iTable;
    FUNC4(p->pLeft, iTable);
    p = p->pRight;
  } 
}