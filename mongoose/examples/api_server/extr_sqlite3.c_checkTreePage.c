
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int zContext ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ i64 ;
struct TYPE_21__ {int usableSize; int pageSize; scalar_t__ autoVacuum; } ;
struct TYPE_20__ {scalar_t__ nData; scalar_t__ nPayload; scalar_t__ nLocal; size_t iOverflow; scalar_t__ nKey; } ;
struct TYPE_19__ {int mallocFailed; scalar_t__ mxErr; TYPE_4__* pBt; } ;
struct TYPE_18__ {int nCell; int* aData; int leaf; int hdrOffset; scalar_t__ intKey; scalar_t__ isInit; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ IntegrityCk ;
typedef TYPE_3__ CellInfo ;
typedef TYPE_4__ BtShared ;


 int PTRMAP_BTREE ;
 int PTRMAP_OVERFLOW1 ;
 int SQLITE_CORRUPT ;
 int assert (int) ;
 int btreeGetPage (TYPE_4__*,int,TYPE_1__**,int ,int ) ;
 int btreeInitPage (TYPE_1__*) ;
 int btreeParseCellPtr (TYPE_1__*,int*,TYPE_3__*) ;
 scalar_t__ cellSizePtr (TYPE_1__*,int*) ;
 int checkAppendMsg (TYPE_2__*,char*,char*,...) ;
 int checkList (TYPE_2__*,int ,int,int,char*) ;
 int checkPtrmap (TYPE_2__*,int,int ,int,char*) ;
 scalar_t__ checkRef (TYPE_2__*,int,char*) ;
 int* findCell (TYPE_1__*,int) ;
 int get2byte (int*) ;
 int get2byteNotZero (int*) ;
 int get4byte (int*) ;
 int memset (char*,int,int) ;
 int releasePage (TYPE_1__*) ;
 int sqlite3PageFree (char*) ;
 char* sqlite3PageMalloc (int ) ;
 int sqlite3_snprintf (int,char*,char*,int,...) ;

__attribute__((used)) static int checkTreePage(
  IntegrityCk *pCheck,
  int iPage,
  char *zParentContext,
  i64 *pnParentMinKey,
  i64 *pnParentMaxKey
){
  MemPage *pPage;
  int i, rc, depth, d2, pgno, cnt;
  int hdr, cellStart;
  int nCell;
  u8 *data;
  BtShared *pBt;
  int usableSize;
  char zContext[100];
  char *hit = 0;
  i64 nMinKey = 0;
  i64 nMaxKey = 0;

  sqlite3_snprintf(sizeof(zContext), zContext, "Page %d: ", iPage);



  pBt = pCheck->pBt;
  usableSize = pBt->usableSize;
  if( iPage==0 ) return 0;
  if( checkRef(pCheck, iPage, zParentContext) ) return 0;
  if( (rc = btreeGetPage(pBt, (Pgno)iPage, &pPage, 0, 0))!=0 ){
    checkAppendMsg(pCheck, zContext,
       "unable to get the page. error code=%d", rc);
    return 0;
  }



  pPage->isInit = 0;
  if( (rc = btreeInitPage(pPage))!=0 ){
    assert( rc==SQLITE_CORRUPT );
    checkAppendMsg(pCheck, zContext,
                   "btreeInitPage() returns error code %d", rc);
    releasePage(pPage);
    return 0;
  }



  depth = 0;
  for(i=0; i<pPage->nCell && pCheck->mxErr; i++){
    u8 *pCell;
    u32 sz;
    CellInfo info;



    sqlite3_snprintf(sizeof(zContext), zContext,
             "On tree page %d cell %d: ", iPage, i);
    pCell = findCell(pPage,i);
    btreeParseCellPtr(pPage, pCell, &info);
    sz = info.nData;
    if( !pPage->intKey ) sz += (int)info.nKey;


    else if( i==0 ) nMinKey = nMaxKey = info.nKey;
    else{
      if( info.nKey <= nMaxKey ){
        checkAppendMsg(pCheck, zContext,
            "Rowid %lld out of order (previous was %lld)", info.nKey, nMaxKey);
      }
      nMaxKey = info.nKey;
    }
    assert( sz==info.nPayload );
    if( (sz>info.nLocal)
     && (&pCell[info.iOverflow]<=&pPage->aData[pBt->usableSize])
    ){
      int nPage = (sz - info.nLocal + usableSize - 5)/(usableSize - 4);
      Pgno pgnoOvfl = get4byte(&pCell[info.iOverflow]);

      if( pBt->autoVacuum ){
        checkPtrmap(pCheck, pgnoOvfl, PTRMAP_OVERFLOW1, iPage, zContext);
      }

      checkList(pCheck, 0, pgnoOvfl, nPage, zContext);
    }



    if( !pPage->leaf ){
      pgno = get4byte(pCell);

      if( pBt->autoVacuum ){
        checkPtrmap(pCheck, pgno, PTRMAP_BTREE, iPage, zContext);
      }

      d2 = checkTreePage(pCheck, pgno, zContext, &nMinKey, i==0 ? ((void*)0) : &nMaxKey);
      if( i>0 && d2!=depth ){
        checkAppendMsg(pCheck, zContext, "Child page depth differs");
      }
      depth = d2;
    }
  }

  if( !pPage->leaf ){
    pgno = get4byte(&pPage->aData[pPage->hdrOffset+8]);
    sqlite3_snprintf(sizeof(zContext), zContext,
                     "On page %d at right child: ", iPage);

    if( pBt->autoVacuum ){
      checkPtrmap(pCheck, pgno, PTRMAP_BTREE, iPage, zContext);
    }

    checkTreePage(pCheck, pgno, zContext, ((void*)0), !pPage->nCell ? ((void*)0) : &nMaxKey);
  }




  if( pPage->leaf && pPage->intKey ){

    if( pnParentMinKey ){

      if( !pnParentMaxKey ){
        if( nMaxKey > *pnParentMinKey ){
          checkAppendMsg(pCheck, zContext,
              "Rowid %lld out of order (max larger than parent min of %lld)",
              nMaxKey, *pnParentMinKey);
        }
      }else{
        if( nMinKey <= *pnParentMinKey ){
          checkAppendMsg(pCheck, zContext,
              "Rowid %lld out of order (min less than parent min of %lld)",
              nMinKey, *pnParentMinKey);
        }
        if( nMaxKey > *pnParentMaxKey ){
          checkAppendMsg(pCheck, zContext,
              "Rowid %lld out of order (max larger than parent max of %lld)",
              nMaxKey, *pnParentMaxKey);
        }
        *pnParentMinKey = nMaxKey;
      }

    } else if( pnParentMaxKey ){
      if( nMinKey <= *pnParentMaxKey ){
        checkAppendMsg(pCheck, zContext,
            "Rowid %lld out of order (min less than parent max of %lld)",
            nMinKey, *pnParentMaxKey);
      }
    }
  }



  data = pPage->aData;
  hdr = pPage->hdrOffset;
  hit = sqlite3PageMalloc( pBt->pageSize );
  if( hit==0 ){
    pCheck->mallocFailed = 1;
  }else{
    int contentOffset = get2byteNotZero(&data[hdr+5]);
    assert( contentOffset<=usableSize );
    memset(hit+contentOffset, 0, usableSize-contentOffset);
    memset(hit, 1, contentOffset);
    nCell = get2byte(&data[hdr+3]);
    cellStart = hdr + 12 - 4*pPage->leaf;
    for(i=0; i<nCell; i++){
      int pc = get2byte(&data[cellStart+i*2]);
      u32 size = 65536;
      int j;
      if( pc<=usableSize-4 ){
        size = cellSizePtr(pPage, &data[pc]);
      }
      if( (int)(pc+size-1)>=usableSize ){
        checkAppendMsg(pCheck, 0,
            "Corruption detected in cell %d on page %d",i,iPage);
      }else{
        for(j=pc+size-1; j>=pc; j--) hit[j]++;
      }
    }
    i = get2byte(&data[hdr+1]);
    while( i>0 ){
      int size, j;
      assert( i<=usableSize-4 );
      size = get2byte(&data[i+2]);
      assert( i+size<=usableSize );
      for(j=i+size-1; j>=i; j--) hit[j]++;
      j = get2byte(&data[i]);
      assert( j==0 || j>i+size );
      assert( j<=usableSize-4 );
      i = j;
    }
    for(i=cnt=0; i<usableSize; i++){
      if( hit[i]==0 ){
        cnt++;
      }else if( hit[i]>1 ){
        checkAppendMsg(pCheck, 0,
          "Multiple uses for byte %d of page %d", i, iPage);
        break;
      }
    }
    if( cnt!=data[hdr+7] ){
      checkAppendMsg(pCheck, 0,
          "Fragmentation of %d bytes reported as %d on page %d",
          cnt, data[hdr+7], iPage);
    }
  }
  sqlite3PageFree(hit);
  releasePage(pPage);
  return depth+1;
}
