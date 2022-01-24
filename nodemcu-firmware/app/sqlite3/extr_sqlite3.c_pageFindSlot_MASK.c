#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {int hdrOffset; int* aData; int cellOffset; int nCell; TYPE_1__* pBt; } ;
struct TYPE_4__ {int usableSize; } ;
typedef  TYPE_2__ MemPage ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static u8 *FUNC5(MemPage *pPg, int nByte, int *pRc){
  const int hdr = pPg->hdrOffset;
  u8 * const aData = pPg->aData;
  int iAddr = hdr + 1;
  int pc = FUNC1(&aData[iAddr]);
  int x;
  int usableSize = pPg->pBt->usableSize;

  FUNC0( pc>0 );
  do{
    int size;            /* Size of the free slot */
    /* EVIDENCE-OF: R-06866-39125 Freeblocks are always connected in order of
    ** increasing offset. */
    if( pc>usableSize-4 || pc<iAddr+4 ){
      *pRc = SQLITE_CORRUPT_BKPT;
      return 0;
    }
    /* EVIDENCE-OF: R-22710-53328 The third and fourth bytes of each
    ** freeblock form a big-endian integer which is the size of the freeblock
    ** in bytes, including the 4-byte header. */
    size = FUNC1(&aData[pc+2]);
    if( (x = size - nByte)>=0 ){
      FUNC4( x==4 );
      FUNC4( x==3 );
      if( pc < pPg->cellOffset+2*pPg->nCell || size+pc > usableSize ){
        *pRc = SQLITE_CORRUPT_BKPT;
        return 0;
      }else if( x<4 ){
        /* EVIDENCE-OF: R-11498-58022 In a well-formed b-tree page, the total
        ** number of bytes in fragments may not exceed 60. */
        if( aData[hdr+7]>57 ) return 0;

        /* Remove the slot from the free-list. Update the number of
        ** fragmented bytes within the page. */
        FUNC2(&aData[iAddr], &aData[pc], 2);
        aData[hdr+7] += (u8)x;
      }else{
        /* The slot remains on the free-list. Reduce its size to account
         ** for the portion used by the new allocation. */
        FUNC3(&aData[pc+2], x);
      }
      return &aData[pc + x];
    }
    iAddr = pc;
    pc = FUNC1(&aData[pc]);
  }while( pc );

  return 0;
}