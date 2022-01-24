#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ exclusiveMode; int nWiData; int /*<<< orphan*/  pDbFd; scalar_t__* apWiData; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 scalar_t__ WAL_HEAPMEMORY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(Wal *pWal, int isDelete){
  if( pWal->exclusiveMode==WAL_HEAPMEMORY_MODE ){
    int i;
    for(i=0; i<pWal->nWiData; i++){
      FUNC1((void *)pWal->apWiData[i]);
      pWal->apWiData[i] = 0;
    }
  }else{
    FUNC0(pWal->pDbFd, isDelete);
  }
}