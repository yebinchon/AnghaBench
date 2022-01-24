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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_9__ {int nMem; } ;
struct TYPE_8__ {int iLimit; scalar_t__ nSelectRow; int iOffset; int /*<<< orphan*/  pOffset; int /*<<< orphan*/  pLimit; int /*<<< orphan*/  selFlags; } ;
typedef  TYPE_1__ Select ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_IfNot ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  OP_OffsetLimit ; 
 int /*<<< orphan*/  SF_FixedLimit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(Parse *pParse, Select *p, int iBreak){
  Vdbe *v = 0;
  int iLimit = 0;
  int iOffset;
  int n;
  if( p->iLimit ) return;

  /*
  ** "LIMIT -1" always shows all rows.  There is some
  ** controversy about what the correct behavior should be.
  ** The current implementation interprets "LIMIT 0" to mean
  ** no rows.
  */
  FUNC3(pParse);
  FUNC2( p->pOffset==0 || p->pLimit!=0 );
  if( p->pLimit ){
    p->iLimit = iLimit = ++pParse->nMem;
    v = FUNC6(pParse);
    FUNC2( v!=0 );
    if( FUNC5(p->pLimit, &n) ){
      FUNC9(v, OP_Integer, n, iLimit);
      FUNC0((v, "LIMIT counter"));
      if( n==0 ){
        FUNC11(v, iBreak);
      }else if( n>=0 && p->nSelectRow>FUNC7((u64)n) ){
        p->nSelectRow = FUNC7((u64)n);
        p->selFlags |= SF_FixedLimit;
      }
    }else{
      FUNC4(pParse, p->pLimit, iLimit);
      FUNC8(v, OP_MustBeInt, iLimit); FUNC1(v);
      FUNC0((v, "LIMIT counter"));
      FUNC9(v, OP_IfNot, iLimit, iBreak); FUNC1(v);
    }
    if( p->pOffset ){
      p->iOffset = iOffset = ++pParse->nMem;
      pParse->nMem++;   /* Allocate an extra register for limit+offset */
      FUNC4(pParse, p->pOffset, iOffset);
      FUNC8(v, OP_MustBeInt, iOffset); FUNC1(v);
      FUNC0((v, "OFFSET counter"));
      FUNC10(v, OP_OffsetLimit, iLimit, iOffset+1, iOffset);
      FUNC0((v, "LIMIT+OFFSET"));
    }
  }
}