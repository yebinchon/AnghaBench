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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_5__ {double r; int /*<<< orphan*/  i; } ;
struct TYPE_6__ {int flags; TYPE_1__ u; int /*<<< orphan*/  n; int /*<<< orphan*/  z; int /*<<< orphan*/  enc; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Int ; 
 int MEM_Real ; 
 int MEM_Str ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(Mem *pRec, int bTryForInt){
  double rValue;
  i64 iValue;
  u8 enc = pRec->enc;
  FUNC0( (pRec->flags & (MEM_Str|MEM_Int|MEM_Real))==MEM_Str );
  if( FUNC1(pRec->z, &rValue, pRec->n, enc)==0 ) return;
  if( 0==FUNC2(pRec->z, &iValue, pRec->n, enc) ){
    pRec->u.i = iValue;
    pRec->flags |= MEM_Int;
  }else{
    pRec->u.r = rValue;
    pRec->flags |= MEM_Real;
    if( bTryForInt ) FUNC3(pRec);
  }
}