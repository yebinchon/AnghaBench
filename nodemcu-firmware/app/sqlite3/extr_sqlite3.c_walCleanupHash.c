
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int ht_slot ;
struct TYPE_5__ {int mxFrame; } ;
struct TYPE_6__ {int writeLock; size_t nWiData; int* apWiData; TYPE_1__ hdr; } ;
typedef TYPE_2__ Wal ;


 int HASHTABLE_NPAGE_ONE ;
 int HASHTABLE_NSLOT ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 int testcase (int) ;
 size_t walFramePage (scalar_t__) ;
 int walHash (int volatile) ;
 int walHashGet (TYPE_2__*,size_t,int volatile**,int volatile**,int*) ;
 int walNextHash (int) ;

__attribute__((used)) static void walCleanupHash(Wal *pWal){
  volatile ht_slot *aHash = 0;
  volatile u32 *aPgno = 0;
  u32 iZero = 0;
  int iLimit = 0;
  int nByte;
  int i;

  assert( pWal->writeLock );
  testcase( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE-1 );
  testcase( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE );
  testcase( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE+1 );

  if( pWal->hdr.mxFrame==0 ) return;





  assert( pWal->nWiData>walFramePage(pWal->hdr.mxFrame) );
  assert( pWal->apWiData[walFramePage(pWal->hdr.mxFrame)] );
  walHashGet(pWal, walFramePage(pWal->hdr.mxFrame), &aHash, &aPgno, &iZero);




  iLimit = pWal->hdr.mxFrame - iZero;
  assert( iLimit>0 );
  for(i=0; i<HASHTABLE_NSLOT; i++){
    if( aHash[i]>iLimit ){
      aHash[i] = 0;
    }
  }




  nByte = (int)((char *)aHash - (char *)&aPgno[iLimit+1]);
  memset((void *)&aPgno[iLimit+1], 0, nByte);
}
