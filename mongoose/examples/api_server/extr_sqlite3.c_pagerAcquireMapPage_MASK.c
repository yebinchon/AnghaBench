#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_6__ {int pageSize; int /*<<< orphan*/  nMmapOut; int /*<<< orphan*/  fd; int /*<<< orphan*/  nExtra; TYPE_1__* pMmapFreelist; } ;
struct TYPE_5__ {void* pExtra; scalar_t__ flags; int nRef; scalar_t__ pPage; int pgno; void* pData; TYPE_2__* pPager; struct TYPE_5__* pDirty; } ;
typedef  int Pgno ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 scalar_t__ PGHDR_MMAP ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static int FUNC4(
  Pager *pPager,                  /* Pager object */
  Pgno pgno,                      /* Page number */
  void *pData,                    /* xFetch()'d data for this page */
  PgHdr **ppPage                  /* OUT: Acquired page object */
){
  PgHdr *p;                       /* Memory mapped page to return */

  if( pPager->pMmapFreelist ){
    *ppPage = p = pPager->pMmapFreelist;
    pPager->pMmapFreelist = p->pDirty;
    p->pDirty = 0;
    FUNC1(p->pExtra, 0, pPager->nExtra);
  }else{
    *ppPage = p = (PgHdr *)FUNC2(sizeof(PgHdr) + pPager->nExtra);
    if( p==0 ){
      FUNC3(pPager->fd, (i64)(pgno-1) * pPager->pageSize, pData);
      return SQLITE_NOMEM;
    }
    p->pExtra = (void *)&p[1];
    p->flags = PGHDR_MMAP;
    p->nRef = 1;
    p->pPager = pPager;
  }

  FUNC0( p->pExtra==(void *)&p[1] );
  FUNC0( p->pPage==0 );
  FUNC0( p->flags==PGHDR_MMAP );
  FUNC0( p->pPager==pPager );
  FUNC0( p->nRef==1 );

  p->pgno = pgno;
  p->pData = pData;
  pPager->nMmapOut++;

  return SQLITE_OK;
}