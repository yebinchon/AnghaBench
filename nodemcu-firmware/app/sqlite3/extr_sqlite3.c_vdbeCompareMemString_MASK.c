#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_11__ {scalar_t__ enc; int (* xCmp ) (int /*<<< orphan*/ ,int,void const*,int,void const*) ;int /*<<< orphan*/  pUser; } ;
struct TYPE_10__ {scalar_t__ enc; int n; void const* z; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Mem ;
typedef  TYPE_2__ CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_Ephem ; 
 int /*<<< orphan*/  MEM_Null ; 
 int /*<<< orphan*/  SQLITE_NOMEM_BKPT ; 
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void const*,int,void const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void const*,int,void const*) ; 

__attribute__((used)) static int FUNC6(
  const Mem *pMem1,
  const Mem *pMem2,
  const CollSeq *pColl,
  u8 *prcErr                      /* If an OOM occurs, set to SQLITE_NOMEM */
){
  if( pMem1->enc==pColl->enc ){
    /* The strings are already in the correct encoding.  Call the
     ** comparison function directly */
    return pColl->xCmp(pColl->pUser,pMem1->n,pMem1->z,pMem2->n,pMem2->z);
  }else{
    int rc;
    const void *v1, *v2;
    int n1, n2;
    Mem c1;
    Mem c2;
    FUNC1(&c1, pMem1->db, MEM_Null);
    FUNC1(&c2, pMem1->db, MEM_Null);
    FUNC3(&c1, pMem1, MEM_Ephem);
    FUNC3(&c2, pMem2, MEM_Ephem);
    v1 = FUNC0((sqlite3_value*)&c1, pColl->enc);
    n1 = v1==0 ? 0 : c1.n;
    v2 = FUNC0((sqlite3_value*)&c2, pColl->enc);
    n2 = v2==0 ? 0 : c2.n;
    rc = pColl->xCmp(pColl->pUser, n1, v1, n2, v2);
    if( (v1==0 || v2==0) && prcErr ) *prcErr = SQLITE_NOMEM_BKPT;
    FUNC2(&c1);
    FUNC2(&c2);
    return rc;
  }
}