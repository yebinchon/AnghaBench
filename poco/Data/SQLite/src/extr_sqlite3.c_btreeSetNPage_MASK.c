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
struct TYPE_6__ {int nPage; int /*<<< orphan*/  pPager; } ;
struct TYPE_5__ {int /*<<< orphan*/ * aData; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(BtShared *pBt, MemPage *pPage1){
  int nPage = FUNC0(&pPage1->aData[28]);
  FUNC2( nPage==0 );
  if( nPage==0 ) FUNC1(pBt->pPager, &nPage);
  FUNC2( pBt->nPage!=nPage );
  pBt->nPage = nPage;
}