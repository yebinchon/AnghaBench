
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_17__ {scalar_t__ autoVacuum; TYPE_13__* pCursor; } ;
struct TYPE_16__ {scalar_t__ inTrans; int db; TYPE_3__* pBt; } ;
struct TYPE_15__ {int db; } ;
struct TYPE_14__ {TYPE_1__* pBtree; } ;
typedef int Pgno ;
typedef int MemPage ;
typedef TYPE_2__ Btree ;
typedef TYPE_3__ BtShared ;


 int BTREE_LARGEST_ROOT_PAGE ;
 scalar_t__ NEVER (TYPE_13__*) ;
 int PENDING_BYTE_PAGE (TYPE_3__*) ;
 int PTF_INTKEY ;
 int PTF_LEAF ;
 scalar_t__ PTRMAP_ISPAGE (TYPE_3__*,int) ;
 int PTRMAP_ROOTPAGE ;
 int SQLITE_LOCKED_SHAREDCACHE ;
 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 int btreeGetPage (TYPE_3__*,int,int **,int ,int ) ;
 int freePage (int *,int*) ;
 int releasePage (int *) ;
 int relocatePage (TYPE_3__*,int *,int ,int ,int,int ) ;
 int sqlite3BtreeClearTable (TYPE_2__*,int,int ) ;
 int sqlite3BtreeGetMeta (TYPE_2__*,int ,int*) ;
 int sqlite3BtreeHoldsMutex (TYPE_2__*) ;
 int sqlite3BtreeUpdateMeta (TYPE_2__*,int,int) ;
 int sqlite3ConnectionBlocked (int ,int ) ;
 int zeroPage (int *,int) ;

__attribute__((used)) static int btreeDropTable(Btree *p, Pgno iTable, int *piMoved){
  int rc;
  MemPage *pPage = 0;
  BtShared *pBt = p->pBt;

  assert( sqlite3BtreeHoldsMutex(p) );
  assert( p->inTrans==TRANS_WRITE );
  if( NEVER(pBt->pCursor) ){
    sqlite3ConnectionBlocked(p->db, pBt->pCursor->pBtree->db);
    return SQLITE_LOCKED_SHAREDCACHE;
  }

  rc = btreeGetPage(pBt, (Pgno)iTable, &pPage, 0, 0);
  if( rc ) return rc;
  rc = sqlite3BtreeClearTable(p, iTable, 0);
  if( rc ){
    releasePage(pPage);
    return rc;
  }

  *piMoved = 0;

  if( iTable>1 ){




    if( pBt->autoVacuum ){
      Pgno maxRootPgno;
      sqlite3BtreeGetMeta(p, BTREE_LARGEST_ROOT_PAGE, &maxRootPgno);

      if( iTable==maxRootPgno ){



        freePage(pPage, &rc);
        releasePage(pPage);
        if( rc!=SQLITE_OK ){
          return rc;
        }
      }else{




        MemPage *pMove;
        releasePage(pPage);
        rc = btreeGetPage(pBt, maxRootPgno, &pMove, 0, 0);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        rc = relocatePage(pBt, pMove, PTRMAP_ROOTPAGE, 0, iTable, 0);
        releasePage(pMove);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        pMove = 0;
        rc = btreeGetPage(pBt, maxRootPgno, &pMove, 0, 0);
        freePage(pMove, &rc);
        releasePage(pMove);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        *piMoved = maxRootPgno;
      }






      maxRootPgno--;
      while( maxRootPgno==PENDING_BYTE_PAGE(pBt)
             || PTRMAP_ISPAGE(pBt, maxRootPgno) ){
        maxRootPgno--;
      }
      assert( maxRootPgno!=PENDING_BYTE_PAGE(pBt) );

      rc = sqlite3BtreeUpdateMeta(p, 4, maxRootPgno);
    }else{
      freePage(pPage, &rc);
      releasePage(pPage);
    }

  }else{




    zeroPage(pPage, PTF_INTKEY|PTF_LEAF );
    releasePage(pPage);
  }
  return rc;
}
