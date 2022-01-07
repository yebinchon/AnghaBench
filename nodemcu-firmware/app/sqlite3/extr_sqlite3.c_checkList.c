
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pBt; int pPager; scalar_t__ mxErr; } ;
struct TYPE_7__ {scalar_t__ autoVacuum; scalar_t__ usableSize; } ;
typedef int Pgno ;
typedef TYPE_2__ IntegrityCk ;
typedef int DbPage ;


 int PTRMAP_FREEPAGE ;
 int PTRMAP_OVERFLOW2 ;
 int checkAppendMsg (TYPE_2__*,char*,...) ;
 int checkPtrmap (TYPE_2__*,int,int ,int) ;
 scalar_t__ checkRef (TYPE_2__*,int) ;
 int get4byte (unsigned char*) ;
 scalar_t__ sqlite3PagerGet (int ,int,int **,int ) ;
 scalar_t__ sqlite3PagerGetData (int *) ;
 int sqlite3PagerUnref (int *) ;

__attribute__((used)) static void checkList(
  IntegrityCk *pCheck,
  int isFreeList,
  int iPage,
  int N
){
  int i;
  int expected = N;
  int iFirst = iPage;
  while( N-- > 0 && pCheck->mxErr ){
    DbPage *pOvflPage;
    unsigned char *pOvflData;
    if( iPage<1 ){
      checkAppendMsg(pCheck,
         "%d of %d pages missing from overflow list starting at %d",
          N+1, expected, iFirst);
      break;
    }
    if( checkRef(pCheck, iPage) ) break;
    if( sqlite3PagerGet(pCheck->pPager, (Pgno)iPage, &pOvflPage, 0) ){
      checkAppendMsg(pCheck, "failed to get page %d", iPage);
      break;
    }
    pOvflData = (unsigned char *)sqlite3PagerGetData(pOvflPage);
    if( isFreeList ){
      int n = get4byte(&pOvflData[4]);

      if( pCheck->pBt->autoVacuum ){
        checkPtrmap(pCheck, iPage, PTRMAP_FREEPAGE, 0);
      }

      if( n>(int)pCheck->pBt->usableSize/4-2 ){
        checkAppendMsg(pCheck,
           "freelist leaf count too big on page %d", iPage);
        N--;
      }else{
        for(i=0; i<n; i++){
          Pgno iFreePage = get4byte(&pOvflData[8+i*4]);

          if( pCheck->pBt->autoVacuum ){
            checkPtrmap(pCheck, iFreePage, PTRMAP_FREEPAGE, 0);
          }

          checkRef(pCheck, iFreePage);
        }
        N -= n;
      }
    }

    else{




      if( pCheck->pBt->autoVacuum && N>0 ){
        i = get4byte(pOvflData);
        checkPtrmap(pCheck, i, PTRMAP_OVERFLOW2, iPage);
      }
    }

    iPage = get4byte(pOvflData);
    sqlite3PagerUnref(pOvflPage);

    if( isFreeList && N<(iPage!=0) ){
      checkAppendMsg(pCheck, "free-page count in header is too small");
    }
  }
}
