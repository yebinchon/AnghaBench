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
struct TYPE_7__ {scalar_t__ nData; scalar_t__ nKey; scalar_t__ nPayload; int iOverflow; } ;
struct TYPE_6__ {int /*<<< orphan*/  pgno; int /*<<< orphan*/  pBt; scalar_t__ intKey; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ CellInfo ;

/* Variables and functions */
 int /*<<< orphan*/  PTRMAP_OVERFLOW1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC4(MemPage *pPage, u8 *pCell, int *pRC){
  CellInfo info;
  if( *pRC ) return;
  FUNC0( pCell!=0 );
  FUNC1(pPage, pCell, &info);
  FUNC0( (info.nData+(pPage->intKey?0:info.nKey))==info.nPayload );
  if( info.iOverflow ){
    Pgno ovfl = FUNC2(&pCell[info.iOverflow]);
    FUNC3(pPage->pBt, ovfl, PTRMAP_OVERFLOW1, pPage->pgno, pRC);
  }
}