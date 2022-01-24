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
struct TYPE_7__ {int nSavepoint; TYPE_2__* aSavepoint; } ;
struct TYPE_6__ {int /*<<< orphan*/  pInSavepoint; int /*<<< orphan*/  nOrig; } ;
struct TYPE_5__ {TYPE_3__* pPager; int /*<<< orphan*/  pgno; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ PagerSavepoint ;
typedef  TYPE_3__ Pager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(PgHdr *pPg){
  Pgno pgno = pPg->pgno;
  Pager *pPager = pPg->pPager;
  int i;
  for(i=0; i<pPager->nSavepoint; i++){
    PagerSavepoint *p = &pPager->aSavepoint[i];
    if( p->nOrig>=pgno && 0==FUNC0(p->pInSavepoint, pgno) ){
      return 1;
    }
  }
  return 0;
}