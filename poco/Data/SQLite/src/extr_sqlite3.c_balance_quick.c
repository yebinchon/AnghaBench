
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_20__ {int usableSize; int mutex; } ;
struct TYPE_19__ {int nCell; int* szCell; int* ixNx; int * apEnd; int ** apCell; TYPE_1__* pRef; } ;
struct TYPE_18__ {int nOverflow; scalar_t__ nCell; scalar_t__ nFree; int (* xCellSize ) (TYPE_1__*,int *) ;int* aData; int cellOffset; int minLocal; int hdrOffset; int pgno; int aDataEnd; int pDbPage; int ** apOvfl; TYPE_3__* pBt; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellArray ;
typedef TYPE_3__ BtShared ;


 scalar_t__ CORRUPT_DB ;
 scalar_t__ ISAUTOVACUUM ;
 scalar_t__ NEVER (int) ;
 int PTF_INTKEY ;
 int PTF_LEAF ;
 int PTF_LEAFDATA ;
 int PTRMAP_BTREE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int allocateBtreePage (TYPE_3__* const,TYPE_1__**,int *,int ,int ) ;
 int assert (int) ;
 int * findCell (TYPE_1__*,scalar_t__) ;
 int insertCell (TYPE_1__*,scalar_t__,int *,int,int ,int ,int*) ;
 int ptrmapPut (TYPE_3__* const,int ,int ,int ,int*) ;
 int ptrmapPutOvflPtr (TYPE_1__*,TYPE_1__*,int *,int*) ;
 int put4byte (int*,int ) ;
 int rebuildPage (TYPE_2__*,int ,int,TYPE_1__*) ;
 int releasePage (TYPE_1__*) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (TYPE_1__*,int *) ;
 int zeroPage (TYPE_1__*,int) ;

__attribute__((used)) static int balance_quick(MemPage *pParent, MemPage *pPage, u8 *pSpace){
  BtShared *const pBt = pPage->pBt;
  MemPage *pNew;
  int rc;
  Pgno pgnoNew;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( sqlite3PagerIswriteable(pParent->pDbPage) );
  assert( pPage->nOverflow==1 );

  if( pPage->nCell==0 ) return SQLITE_CORRUPT_BKPT;
  assert( pPage->nFree>=0 );
  assert( pParent->nFree>=0 );





  rc = allocateBtreePage(pBt, &pNew, &pgnoNew, 0, 0);

  if( rc==SQLITE_OK ){

    u8 *pOut = &pSpace[4];
    u8 *pCell = pPage->apOvfl[0];
    u16 szCell = pPage->xCellSize(pPage, pCell);
    u8 *pStop;
    CellArray b;

    assert( sqlite3PagerIswriteable(pNew->pDbPage) );
    assert( CORRUPT_DB || pPage->aData[0]==(PTF_INTKEY|PTF_LEAFDATA|PTF_LEAF) );
    zeroPage(pNew, PTF_INTKEY|PTF_LEAFDATA|PTF_LEAF);
    b.nCell = 1;
    b.pRef = pPage;
    b.apCell = &pCell;
    b.szCell = &szCell;
    b.apEnd[0] = pPage->aDataEnd;
    b.ixNx[0] = 2;
    rc = rebuildPage(&b, 0, 1, pNew);
    if( NEVER(rc) ){
      releasePage(pNew);
      return rc;
    }
    pNew->nFree = pBt->usableSize - pNew->cellOffset - 2 - szCell;
    if( ISAUTOVACUUM ){
      ptrmapPut(pBt, pgnoNew, PTRMAP_BTREE, pParent->pgno, &rc);
      if( szCell>pNew->minLocal ){
        ptrmapPutOvflPtr(pNew, pNew, pCell, &rc);
      }
    }
    pCell = findCell(pPage, pPage->nCell-1);
    pStop = &pCell[9];
    while( (*(pCell++)&0x80) && pCell<pStop );
    pStop = &pCell[9];
    while( ((*(pOut++) = *(pCell++))&0x80) && pCell<pStop );


    if( rc==SQLITE_OK ){
      insertCell(pParent, pParent->nCell, pSpace, (int)(pOut-pSpace),
                   0, pPage->pgno, &rc);
    }


    put4byte(&pParent->aData[pParent->hdrOffset+8], pgnoNew);


    releasePage(pNew);
  }

  return rc;
}
