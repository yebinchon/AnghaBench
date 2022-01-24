#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int iZero; int* aHash; int /*<<< orphan*/ * aPgno; } ;
typedef  TYPE_2__ WalHashLoc ;
struct TYPE_7__ {int mxFrame; } ;
struct TYPE_9__ {int writeLock; size_t nWiData; int* apWiData; TYPE_1__ hdr; } ;
typedef  TYPE_3__ Wal ;

/* Variables and functions */
 int HASHTABLE_NPAGE_ONE ; 
 int HASHTABLE_NSLOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t,TYPE_2__*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(Wal *pWal){
  WalHashLoc sLoc;                /* Hash table location */
  int iLimit = 0;                 /* Zero values greater than this */
  int nByte;                      /* Number of bytes to zero in aPgno[] */
  int i;                          /* Used to iterate through aHash[] */

  FUNC0( pWal->writeLock );
  FUNC2( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE-1 );
  FUNC2( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE );
  FUNC2( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE+1 );

  if( pWal->hdr.mxFrame==0 ) return;

  /* Obtain pointers to the hash-table and page-number array containing 
  ** the entry that corresponds to frame pWal->hdr.mxFrame. It is guaranteed
  ** that the page said hash-table and array reside on is already mapped.
  */
  FUNC0( pWal->nWiData>FUNC3(pWal->hdr.mxFrame) );
  FUNC0( pWal->apWiData[FUNC3(pWal->hdr.mxFrame)] );
  FUNC5(pWal, FUNC3(pWal->hdr.mxFrame), &sLoc);

  /* Zero all hash-table entries that correspond to frame numbers greater
  ** than pWal->hdr.mxFrame.
  */
  iLimit = pWal->hdr.mxFrame - sLoc.iZero;
  FUNC0( iLimit>0 );
  for(i=0; i<HASHTABLE_NSLOT; i++){
    if( sLoc.aHash[i]>iLimit ){
      sLoc.aHash[i] = 0;
    }
  }
  
  /* Zero the entries in the aPgno array that correspond to frames with
  ** frame numbers greater than pWal->hdr.mxFrame. 
  */
  nByte = (int)((char *)sLoc.aHash - (char *)&sLoc.aPgno[iLimit+1]);
  FUNC1((void *)&sLoc.aPgno[iLimit+1], 0, nByte);

#ifdef SQLITE_ENABLE_EXPENSIVE_ASSERT
  /* Verify that the every entry in the mapping region is still reachable
  ** via the hash table even after the cleanup.
  */
  if( iLimit ){
    int j;           /* Loop counter */
    int iKey;        /* Hash key */
    for(j=1; j<=iLimit; j++){
      for(iKey=walHash(sLoc.aPgno[j]);sLoc.aHash[iKey];iKey=walNextHash(iKey)){
        if( sLoc.aHash[iKey]==j ) break;
      }
      assert( sLoc.aHash[iKey]==j );
    }
  }
#endif /* SQLITE_ENABLE_EXPENSIVE_ASSERT */
}