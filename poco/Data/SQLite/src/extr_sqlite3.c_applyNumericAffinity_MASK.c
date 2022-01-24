#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {double r; int /*<<< orphan*/  i; } ;
struct TYPE_7__ {int flags; TYPE_1__ u; int /*<<< orphan*/  n; int /*<<< orphan*/  z; int /*<<< orphan*/  enc; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Int ; 
 int MEM_IntReal ; 
 int MEM_Real ; 
 int MEM_Str ; 
 scalar_t__ FUNC0 (TYPE_2__*,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(Mem *pRec, int bTryForInt){
  double rValue;
  u8 enc = pRec->enc;
  int rc;
  FUNC1( (pRec->flags & (MEM_Str|MEM_Int|MEM_Real|MEM_IntReal))==MEM_Str );
  rc = FUNC2(pRec->z, &rValue, pRec->n, enc);
  if( rc<=0 ) return;
  if( rc==1 && FUNC0(pRec, rValue, &pRec->u.i) ){
    pRec->flags |= MEM_Int;
  }else{
    pRec->u.r = rValue;
    pRec->flags |= MEM_Real;
    if( bTryForInt ) FUNC3(pRec);
  }
  /* TEXT->NUMERIC is many->one.  Hence, it is important to invalidate the
  ** string representation after computing a numeric equivalent, because the
  ** string representation might not be the canonical representation for the
  ** numeric value.  Ticket [343634942dd54ab57b7024] 2018-01-31. */
  pRec->flags &= ~MEM_Str;
}