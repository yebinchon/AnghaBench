
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {scalar_t__ usableSize; } ;
struct TYPE_8__ {int hdrOffset; int pgno; int isInit; int const nFree; int nCell; scalar_t__ cellOffset; int * aData; TYPE_2__* pBt; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 scalar_t__ ISAUTOVACUUM ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeComputeFreeSpace (TYPE_1__*) ;
 int btreeInitPage (TYPE_1__*) ;
 int get2byte (int *) ;
 int memcpy (int *,int *,scalar_t__) ;
 int setChildPtrmaps (TYPE_1__*) ;

__attribute__((used)) static void copyNodeContent(MemPage *pFrom, MemPage *pTo, int *pRC){
  if( (*pRC)==SQLITE_OK ){
    BtShared * const pBt = pFrom->pBt;
    u8 * const aFrom = pFrom->aData;
    u8 * const aTo = pTo->aData;
    int const iFromHdr = pFrom->hdrOffset;
    int const iToHdr = ((pTo->pgno==1) ? 100 : 0);
    int rc;
    int iData;


    assert( pFrom->isInit );
    assert( pFrom->nFree>=iToHdr );
    assert( get2byte(&aFrom[iFromHdr+5]) <= (int)pBt->usableSize );


    iData = get2byte(&aFrom[iFromHdr+5]);
    memcpy(&aTo[iData], &aFrom[iData], pBt->usableSize-iData);
    memcpy(&aTo[iToHdr], &aFrom[iFromHdr], pFrom->cellOffset + 2*pFrom->nCell);






    pTo->isInit = 0;
    rc = btreeInitPage(pTo);
    if( rc==SQLITE_OK ) rc = btreeComputeFreeSpace(pTo);
    if( rc!=SQLITE_OK ){
      *pRC = rc;
      return;
    }




    if( ISAUTOVACUUM ){
      *pRC = setChildPtrmaps(pTo);
    }
  }
}
