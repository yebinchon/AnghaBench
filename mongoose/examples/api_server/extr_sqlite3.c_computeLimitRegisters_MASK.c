#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_9__ {int nMem; } ;
struct TYPE_8__ {int iLimit; double nSelectRow; int iOffset; int /*<<< orphan*/  pOffset; int /*<<< orphan*/  pLimit; } ;
typedef  TYPE_1__ Select ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  OP_Add ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  OP_IfZero ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(Parse *pParse, Select *p, int iBreak){
  Vdbe *v = 0;
  int iLimit = 0;
  int iOffset;
  int addr1, n;
  if( p->iLimit ) return;

  /* 
  ** "LIMIT -1" always shows all rows.  There is some
  ** contraversy about what the correct behavior should be.
  ** The current implementation interprets "LIMIT 0" to mean
  ** no rows.
  */
  FUNC3(pParse);
  FUNC2( p->pOffset==0 || p->pLimit!=0 );
  if( p->pLimit ){
    p->iLimit = iLimit = ++pParse->nMem;
    v = FUNC6(pParse);
    if( FUNC0(v==0) ) return;  /* VDBE should have already been allocated */
    if( FUNC5(p->pLimit, &n) ){
      FUNC8(v, OP_Integer, n, iLimit);
      FUNC1((v, "LIMIT counter"));
      if( n==0 ){
        FUNC8(v, OP_Goto, 0, iBreak);
      }else{
        if( p->nSelectRow > (double)n ) p->nSelectRow = (double)n;
      }
    }else{
      FUNC4(pParse, p->pLimit, iLimit);
      FUNC7(v, OP_MustBeInt, iLimit);
      FUNC1((v, "LIMIT counter"));
      FUNC8(v, OP_IfZero, iLimit, iBreak);
    }
    if( p->pOffset ){
      p->iOffset = iOffset = ++pParse->nMem;
      pParse->nMem++;   /* Allocate an extra register for limit+offset */
      FUNC4(pParse, p->pOffset, iOffset);
      FUNC7(v, OP_MustBeInt, iOffset);
      FUNC1((v, "OFFSET counter"));
      addr1 = FUNC7(v, OP_IfPos, iOffset);
      FUNC8(v, OP_Integer, 0, iOffset);
      FUNC10(v, addr1);
      FUNC9(v, OP_Add, iLimit, iOffset, iOffset+1);
      FUNC1((v, "LIMIT+OFFSET"));
      addr1 = FUNC7(v, OP_IfPos, iLimit);
      FUNC8(v, OP_Integer, -1, iOffset+1);
      FUNC10(v, addr1);
    }
  }
}