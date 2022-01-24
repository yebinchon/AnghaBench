#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uptr ;
typedef  scalar_t__ u8 ;
struct TYPE_8__ {int* ixNx; scalar_t__** apCell; scalar_t__** apEnd; } ;
struct TYPE_7__ {scalar_t__ hdrOffset; scalar_t__* aData; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ CellArray ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int CORRUPT_DB ; 
 int NB ; 
 int /*<<< orphan*/  SQLITE_CORRUPT_BKPT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__* FUNC4 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 

__attribute__((used)) static int FUNC6(
  MemPage *pPg,                   /* Page to add cells to */
  u8 *pBegin,                     /* End of cell-pointer array */
  u8 **ppData,                    /* IN/OUT: Page content-area pointer */
  u8 *pCellptr,                   /* Pointer to cell-pointer area */
  int iFirst,                     /* Index of first cell to add */
  int nCell,                      /* Number of cells to add to pPg */
  CellArray *pCArray              /* Array of cells */
){
  int i = iFirst;                 /* Loop counter - cell index to insert */
  u8 *aData = pPg->aData;         /* Complete page */
  u8 *pData = *ppData;            /* Content area.  A subset of aData[] */
  int iEnd = iFirst + nCell;      /* End of loop. One past last cell to ins */
  int k;                          /* Current slot in pCArray->apEnd[] */
  u8 *pEnd;                       /* Maximum extent of cell data */
  FUNC1( CORRUPT_DB || pPg->hdrOffset==0 );    /* Never called on page 1 */
  if( iEnd<=iFirst ) return 0;
  for(k=0; pCArray->ixNx[k]<=i && FUNC0(k<NB*2); k++){}
  pEnd = pCArray->apEnd[k];
  while( 1 /*Exit by break*/ ){
    int sz, rc;
    u8 *pSlot;
    sz = FUNC2(pCArray, i);
    if( (aData[1]==0 && aData[2]==0) || (pSlot = FUNC4(pPg,sz,&rc))==0 ){
      if( (pData - pBegin)<sz ) return 1;
      pData -= sz;
      pSlot = pData;
    }
    /* pSlot and pCArray->apCell[i] will never overlap on a well-formed
    ** database.  But they might for a corrupt database.  Hence use memmove()
    ** since memcpy() sends SIGABORT with overlapping buffers on OpenBSD */
    FUNC1( (pSlot+sz)<=pCArray->apCell[i]
         || pSlot>=(pCArray->apCell[i]+sz)
         || CORRUPT_DB );
    if( (uptr)(pCArray->apCell[i]+sz)>(uptr)pEnd
     && (uptr)(pCArray->apCell[i])<(uptr)pEnd
    ){
      FUNC1( CORRUPT_DB );
      (void)SQLITE_CORRUPT_BKPT;
      return 1;
    }
    FUNC3(pSlot, pCArray->apCell[i], sz);
    FUNC5(pCellptr, (pSlot - aData));
    pCellptr += 2;
    i++;
    if( i>=iEnd ) break;
    if( pCArray->ixNx[k]<=i ){
      k++;
      pEnd = pCArray->apEnd[k];
    }
  }
  *ppData = pData;
  return 0;
}