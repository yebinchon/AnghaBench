#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ autoVacuum; } ;
struct TYPE_12__ {scalar_t__ inTrans; TYPE_2__* pBt; } ;
typedef  int Pgno ;
typedef  int /*<<< orphan*/  MemPage ;
typedef  TYPE_1__ Btree ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_LARGEST_ROOT_PAGE ; 
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  PTRMAP_ROOTPAGE ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC11(Btree *p, Pgno iTable, int *piMoved){
  int rc;
  MemPage *pPage = 0;
  BtShared *pBt = p->pBt;

  FUNC2( FUNC9(p) );
  FUNC2( p->inTrans==TRANS_WRITE );
  FUNC2( iTable>=2 );

  rc = FUNC3(pBt, (Pgno)iTable, &pPage, 0);
  if( rc ) return rc;
  rc = FUNC7(p, iTable, 0);
  if( rc ){
    FUNC5(pPage);
    return rc;
  }

  *piMoved = 0;

#ifdef SQLITE_OMIT_AUTOVACUUM
  freePage(pPage, &rc);
  releasePage(pPage);
#else
  if( pBt->autoVacuum ){
    Pgno maxRootPgno;
    FUNC8(p, BTREE_LARGEST_ROOT_PAGE, &maxRootPgno);

    if( iTable==maxRootPgno ){
      /* If the table being dropped is the table with the largest root-page
      ** number in the database, put the root page on the free list.
      */
      FUNC4(pPage, &rc);
      FUNC5(pPage);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }else{
      /* The table being dropped does not have the largest root-page
      ** number in the database. So move the page that does into the
      ** gap left by the deleted root-page.
      */
      MemPage *pMove;
      FUNC5(pPage);
      rc = FUNC3(pBt, maxRootPgno, &pMove, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = FUNC6(pBt, pMove, PTRMAP_ROOTPAGE, 0, iTable, 0);
      FUNC5(pMove);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      pMove = 0;
      rc = FUNC3(pBt, maxRootPgno, &pMove, 0);
      FUNC4(pMove, &rc);
      FUNC5(pMove);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      *piMoved = maxRootPgno;
    }

    /* Set the new 'max-root-page' value in the database header. This
    ** is the old value less one, less one more if that happens to
    ** be a root-page number, less one again if that is the
    ** PENDING_BYTE_PAGE.
    */
    maxRootPgno--;
    while( maxRootPgno==FUNC0(pBt)
           || FUNC1(pBt, maxRootPgno) ){
      maxRootPgno--;
    }
    FUNC2( maxRootPgno!=FUNC0(pBt) );

    rc = FUNC10(p, 4, maxRootPgno);
  }else{
    FUNC4(pPage, &rc);
    FUNC5(pPage);
  }
#endif
  return rc;
}