#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WhereMaskSet ;
struct TYPE_5__ {int /*<<< orphan*/  pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_6__ {scalar_t__ op; TYPE_1__ x; struct TYPE_6__* pLeft; struct TYPE_6__* pRight; int /*<<< orphan*/  iTable; } ;
typedef  TYPE_2__ Expr ;
typedef  int /*<<< orphan*/  Bitmask ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_COLUMN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Bitmask FUNC4(WhereMaskSet *pMaskSet, Expr *p){
  Bitmask mask = 0;
  if( p==0 ) return 0;
  if( p->op==TK_COLUMN ){
    mask = FUNC3(pMaskSet, p->iTable);
    return mask;
  }
  mask = FUNC4(pMaskSet, p->pRight);
  mask |= FUNC4(pMaskSet, p->pLeft);
  if( FUNC0(p, EP_xIsSelect) ){
    mask |= FUNC2(pMaskSet, p->x.pSelect);
  }else{
    mask |= FUNC1(pMaskSet, p->x.pList);
  }
  return mask;
}