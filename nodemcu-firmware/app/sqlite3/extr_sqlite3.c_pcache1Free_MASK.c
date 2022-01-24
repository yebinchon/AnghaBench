#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nFreeSlot; int bUnderPressure; scalar_t__ nReserve; scalar_t__ nSlot; int /*<<< orphan*/  mutex; TYPE_1__* pFree; int /*<<< orphan*/  pEnd; int /*<<< orphan*/  pStart; } ;
struct TYPE_3__ {struct TYPE_3__* pNext; } ;
typedef  TYPE_1__ PgFreeslot ;

/* Variables and functions */
 int /*<<< orphan*/  MEMTYPE_HEAP ; 
 int /*<<< orphan*/  MEMTYPE_PCACHE ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_OVERFLOW ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_USED ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ pcache1 ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *p){
  if( p==0 ) return;
  if( FUNC0(p, pcache1.pStart, pcache1.pEnd) ){
    PgFreeslot *pSlot;
    FUNC7(pcache1.mutex);
    FUNC5(SQLITE_STATUS_PAGECACHE_USED, 1);
    pSlot = (PgFreeslot*)p;
    pSlot->pNext = pcache1.pFree;
    pcache1.pFree = pSlot;
    pcache1.nFreeSlot++;
    pcache1.bUnderPressure = pcache1.nFreeSlot<pcache1.nReserve;
    FUNC1( pcache1.nFreeSlot<=pcache1.nSlot );
    FUNC8(pcache1.mutex);
  }else{
    FUNC1( FUNC3(p, MEMTYPE_PCACHE) );
    FUNC4(p, MEMTYPE_HEAP);
#ifndef SQLITE_DISABLE_PAGECACHE_OVERFLOW_STATS
    {
      int nFreed = 0;
      nFreed = FUNC2(p);
      FUNC7(pcache1.mutex);
      FUNC5(SQLITE_STATUS_PAGECACHE_OVERFLOW, nFreed);
      FUNC8(pcache1.mutex);
    }
#endif
    FUNC6(p);
  }
}