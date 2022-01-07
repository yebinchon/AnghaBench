
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
typedef int ht_slot ;
struct TYPE_3__ {void* iZero; int* aHash; void** aPgno; } ;
typedef TYPE_1__ WalHashLoc ;
typedef int Wal ;


 int HASHTABLE_NSLOT ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 int walCleanupHash (int *) ;
 int walFramePage (void*) ;
 int walHash (void*) ;
 int walHashGet (int *,int ,TYPE_1__*) ;
 int walNextHash (int) ;

__attribute__((used)) static int walIndexAppend(Wal *pWal, u32 iFrame, u32 iPage){
  int rc;
  WalHashLoc sLoc;

  rc = walHashGet(pWal, walFramePage(iFrame), &sLoc);




  if( rc==SQLITE_OK ){
    int iKey;
    int idx;
    int nCollide;

    idx = iFrame - sLoc.iZero;
    assert( idx <= HASHTABLE_NSLOT/2 + 1 );




    if( idx==1 ){
      int nByte = (int)((u8 *)&sLoc.aHash[HASHTABLE_NSLOT]
                               - (u8 *)&sLoc.aPgno[1]);
      memset((void*)&sLoc.aPgno[1], 0, nByte);
    }







    if( sLoc.aPgno[idx] ){
      walCleanupHash(pWal);
      assert( !sLoc.aPgno[idx] );
    }


    nCollide = idx;
    for(iKey=walHash(iPage); sLoc.aHash[iKey]; iKey=walNextHash(iKey)){
      if( (nCollide--)==0 ) return SQLITE_CORRUPT_BKPT;
    }
    sLoc.aPgno[idx] = iPage;
    sLoc.aHash[iKey] = (ht_slot)idx;
  }


  return rc;
}
