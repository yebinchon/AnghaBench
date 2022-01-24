#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_13__ {struct TYPE_13__* pNextLoop; } ;
typedef  TYPE_4__ WhereLoop ;
struct TYPE_11__ {int /*<<< orphan*/  aInLoop; } ;
struct TYPE_12__ {TYPE_2__ in; } ;
struct TYPE_14__ {TYPE_3__ u; TYPE_1__* pWLoop; } ;
typedef  TYPE_5__ WhereLevel ;
struct TYPE_15__ {int nLevel; TYPE_4__* pLoops; int /*<<< orphan*/  sWC; TYPE_5__* a; } ;
typedef  TYPE_6__ WhereInfo ;
struct TYPE_10__ {int wsFlags; } ;

/* Variables and functions */
 int WHERE_IN_ABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(sqlite3 *db, WhereInfo *pWInfo){
  int i;
  FUNC0( pWInfo!=0 );
  for(i=0; i<pWInfo->nLevel; i++){
    WhereLevel *pLevel = &pWInfo->a[i];
    if( pLevel->pWLoop && (pLevel->pWLoop->wsFlags & WHERE_IN_ABLE) ){
      FUNC1(db, pLevel->u.in.aInLoop);
    }
  }
  FUNC3(&pWInfo->sWC);
  while( pWInfo->pLoops ){
    WhereLoop *p = pWInfo->pLoops;
    pWInfo->pLoops = p->pNextLoop;
    FUNC4(db, p);
  }
  FUNC2(db, pWInfo);
}