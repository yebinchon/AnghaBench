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
struct TYPE_5__ {TYPE_1__* a; } ;
struct TYPE_4__ {int /*<<< orphan*/  pTab; } ;
typedef  TYPE_2__ SrcList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC2(
  SrcList *pSrc,       /* Array of tables to search */
  int N,               /* Number of tables in pSrc->a[] to search */
  const char *zCol,    /* Name of the column we are looking for */
  int *piTab,          /* Write index of pSrc->a[] here */
  int *piCol           /* Write index of pSrc->a[*piTab].pTab->aCol[] here */
){
  int i;               /* For looping over tables in pSrc */
  int iCol;            /* Index of column matching zCol */

  FUNC0( (piTab==0)==(piCol==0) );  /* Both or neither are NULL */
  for(i=0; i<N; i++){
    iCol = FUNC1(pSrc->a[i].pTab, zCol);
    if( iCol>=0 ){
      if( piTab ){
        *piTab = i;
        *piCol = iCol;
      }
      return 1;
    }
  }
  return 0;
}