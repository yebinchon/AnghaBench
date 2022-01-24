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
typedef  int u32 ;
typedef  int ht_slot ;
struct TYPE_5__ {int mxFrame; } ;
struct TYPE_6__ {int writeLock; size_t nWiData; int* apWiData; TYPE_1__ hdr; } ;
typedef  TYPE_2__ Wal ;

/* Variables and functions */
 int HASHTABLE_NPAGE_ONE ; 
 int HASHTABLE_NSLOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (scalar_t__) ; 
 int FUNC4 (int volatile) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t,int volatile**,int volatile**,int*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(Wal *pWal){
  volatile ht_slot *aHash = 0;    /* Pointer to hash table to clear */
  volatile u32 *aPgno = 0;        /* Page number array for hash table */
  u32 iZero = 0;                  /* frame == (aHash[x]+iZero) */
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
  FUNC5(pWal, FUNC3(pWal->hdr.mxFrame), &aHash, &aPgno, &iZero);

  /* Zero all hash-table entries that correspond to frame numbers greater
  ** than pWal->hdr.mxFrame.
  */
  iLimit = pWal->hdr.mxFrame - iZero;
  FUNC0( iLimit>0 );
  for(i=0; i<HASHTABLE_NSLOT; i++){
    if( aHash[i]>iLimit ){
      aHash[i] = 0;
    }
  }

  /* Zero the entries in the aPgno array that correspond to frames with
  ** frame numbers greater than pWal->hdr.mxFrame.
  */
  nByte = (int)((char *)aHash - (char *)&aPgno[iLimit+1]);
  FUNC1((void *)&aPgno[iLimit+1], 0, nByte);

#ifdef SQLITE_ENABLE_EXPENSIVE_ASSERT
  /* Verify that the every entry in the mapping region is still reachable
  ** via the hash table even after the cleanup.
  */
  if( iLimit ){
    int j;           /* Loop counter */
    int iKey;        /* Hash key */
    for(j=1; j<=iLimit; j++){
      for(iKey=walHash(aPgno[j]); aHash[iKey]; iKey=walNextHash(iKey)){
        if( aHash[iKey]==j ) break;
      }
      assert( aHash[iKey]==j );
    }
  }
#endif /* SQLITE_ENABLE_EXPENSIVE_ASSERT */
}