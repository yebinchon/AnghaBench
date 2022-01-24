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
typedef  int u8 ;
struct TYPE_6__ {int hdrOffset; int* aData; TYPE_1__* pBt; } ;
struct TYPE_5__ {int usableSize; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u8 *FUNC6(MemPage *pPg, int nByte, int *pRc){
  const int hdr = pPg->hdrOffset;            /* Offset to page header */
  u8 * const aData = pPg->aData;             /* Page data */
  int iAddr = hdr + 1;                       /* Address of ptr to pc */
  int pc = FUNC2(&aData[iAddr]);          /* Address of a free slot */
  int x;                                     /* Excess size of the slot */
  int maxPC = pPg->pBt->usableSize - nByte;  /* Max address for a usable slot */
  int size;                                  /* Size of the free slot */

  FUNC1( pc>0 );
  while( pc<=maxPC ){
    /* EVIDENCE-OF: R-22710-53328 The third and fourth bytes of each
    ** freeblock form a big-endian integer which is the size of the freeblock
    ** in bytes, including the 4-byte header. */
    size = FUNC2(&aData[pc+2]);
    if( (x = size - nByte)>=0 ){
      FUNC5( x==4 );
      FUNC5( x==3 );
      if( x<4 ){
        /* EVIDENCE-OF: R-11498-58022 In a well-formed b-tree page, the total
        ** number of bytes in fragments may not exceed 60. */
        if( aData[hdr+7]>57 ) return 0;

        /* Remove the slot from the free-list. Update the number of
        ** fragmented bytes within the page. */
        FUNC3(&aData[iAddr], &aData[pc], 2);
        aData[hdr+7] += (u8)x;
      }else if( x+pc > maxPC ){
        /* This slot extends off the end of the usable part of the page */
        *pRc = FUNC0(pPg);
        return 0;
      }else{
        /* The slot remains on the free-list. Reduce its size to account
        ** for the portion used by the new allocation. */
        FUNC4(&aData[pc+2], x);
      }
      return &aData[pc + x];
    }
    iAddr = pc;
    pc = FUNC2(&aData[pc]);
    if( pc<=iAddr+size ){
      if( pc ){
        /* The next slot in the chain is not past the end of the current slot */
        *pRc = FUNC0(pPg);
      }
      return 0;
    }
  }
  if( pc>maxPC+nByte-4 ){
    /* The free slot chain extends off the end of the page */
    *pRc = FUNC0(pPg);
  }
  return 0;
}