#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nColumn; int* aiColumn; TYPE_2__* pTable; } ;
struct TYPE_6__ {TYPE_1__* aCol; } ;
struct TYPE_5__ {int notNull; } ;
typedef  TYPE_3__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(Index *pIdx, int iCol){
  int j;
  FUNC0( pIdx!=0 );
  FUNC0( iCol>=0 && iCol<pIdx->nColumn );
  j = pIdx->aiColumn[iCol];
  if( j>=0 ){
    return pIdx->pTable->aCol[j].notNull;
  }else if( j==(-1) ){
    return 1;
  }else{
    FUNC0( j==(-2) );
    return 0;  /* Assume an indexed expression can always yield a NULL */

  }
}