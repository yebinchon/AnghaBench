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
typedef  int /*<<< orphan*/  VdbeOp ;
struct TYPE_3__ {int nOpAlloc; int /*<<< orphan*/ * aOp; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Vdbe ;
typedef  int /*<<< orphan*/  Op ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(Vdbe *p){
  VdbeOp *pNew;
  int nNew = (p->nOpAlloc ? p->nOpAlloc*2 : (int)(1024/sizeof(Op)));
  pNew = FUNC1(p->db, p->aOp, nNew*sizeof(Op));
  if( pNew ){
    p->nOpAlloc = FUNC0(p->db, pNew)/sizeof(Op);
    p->aOp = pNew;
  }
  return (pNew ? SQLITE_OK : SQLITE_NOMEM);
}