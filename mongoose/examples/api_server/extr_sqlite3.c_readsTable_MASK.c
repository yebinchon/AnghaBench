#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * pVtab; } ;
struct TYPE_13__ {scalar_t__ opcode; int p3; int p2; scalar_t__ p4type; TYPE_1__ p4; } ;
typedef  TYPE_2__ VdbeOp ;
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  VTable ;
struct TYPE_14__ {int tnum; TYPE_5__* pIndex; } ;
typedef  TYPE_3__ Table ;
struct TYPE_16__ {int tnum; struct TYPE_16__* pNext; } ;
struct TYPE_15__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ Index ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ OP_OpenRead ; 
 scalar_t__ OP_VOpen ; 
 scalar_t__ P4_VTAB ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(Parse *p, int iStartAddr, int iDb, Table *pTab){
  Vdbe *v = FUNC3(p);
  int i;
  int iEnd = FUNC4(v);
#ifndef SQLITE_OMIT_VIRTUALTABLE
  VTable *pVTab = FUNC0(pTab) ? FUNC2(p->db, pTab) : 0;
#endif

  for(i=iStartAddr; i<iEnd; i++){
    VdbeOp *pOp = FUNC5(v, i);
    FUNC1( pOp!=0 );
    if( pOp->opcode==OP_OpenRead && pOp->p3==iDb ){
      Index *pIndex;
      int tnum = pOp->p2;
      if( tnum==pTab->tnum ){
        return 1;
      }
      for(pIndex=pTab->pIndex; pIndex; pIndex=pIndex->pNext){
        if( tnum==pIndex->tnum ){
          return 1;
        }
      }
    }
#ifndef SQLITE_OMIT_VIRTUALTABLE
    if( pOp->opcode==OP_VOpen && pOp->p4.pVtab==pVTab ){
      FUNC1( pOp->p4.pVtab!=0 );
      FUNC1( pOp->p4type==P4_VTAB );
      return 1;
    }
#endif
  }
  return 0;
}