#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VdbeOp ;
struct TYPE_7__ {int nOpAlloc; int /*<<< orphan*/ * aOp; TYPE_2__* pParse; } ;
typedef  TYPE_1__ Vdbe ;
struct TYPE_9__ {int* aLimit; } ;
struct TYPE_8__ {int szOpAlloc; TYPE_3__* db; } ;
typedef  TYPE_2__ Parse ;
typedef  int /*<<< orphan*/  Op ;

/* Variables and functions */
 size_t SQLITE_LIMIT_VDBE_OP ; 
 int SQLITE_NOMEM ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(Vdbe *v, int nOp){
  VdbeOp *pNew;
  Parse *p = v->pParse;

  /* The SQLITE_TEST_REALLOC_STRESS compile-time option is designed to force
  ** more frequent reallocs and hence provide more opportunities for 
  ** simulated OOM faults.  SQLITE_TEST_REALLOC_STRESS is generally used
  ** during testing only.  With SQLITE_TEST_REALLOC_STRESS grow the op array
  ** by the minimum* amount required until the size reaches 512.  Normal
  ** operation (without SQLITE_TEST_REALLOC_STRESS) is to double the current
  ** size of the op array or add 1KB of space, whichever is smaller. */
#ifdef SQLITE_TEST_REALLOC_STRESS
  int nNew = (v->nOpAlloc>=512 ? v->nOpAlloc*2 : v->nOpAlloc+nOp);
#else
  int nNew = (v->nOpAlloc ? v->nOpAlloc*2 : (int)(1024/sizeof(Op)));
  FUNC0(nOp);
#endif

  /* Ensure that the size of a VDBE does not grow too large */
  if( nNew > p->db->aLimit[SQLITE_LIMIT_VDBE_OP] ){
    FUNC4(p->db);
    return SQLITE_NOMEM;
  }

  FUNC1( nOp<=(1024/sizeof(Op)) );
  FUNC1( nNew>=(v->nOpAlloc+nOp) );
  pNew = FUNC3(p->db, v->aOp, nNew*sizeof(Op));
  if( pNew ){
    p->szOpAlloc = FUNC2(p->db, pNew);
    v->nOpAlloc = p->szOpAlloc/sizeof(Op);
    v->aOp = pNew;
  }
  return (pNew ? SQLITE_OK : SQLITE_NOMEM_BKPT);
}