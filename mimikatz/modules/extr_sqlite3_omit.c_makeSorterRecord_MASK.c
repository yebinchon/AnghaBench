#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_7__ {int nMem; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_6__ {int nOBSat; scalar_t__ pDeferredRowLoad; } ;
typedef  TYPE_1__ SortCtx ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC2(
  Parse *pParse,
  SortCtx *pSort,
  Select *pSelect,
  int regBase,
  int nBase
){
  int nOBSat = pSort->nOBSat;
  Vdbe *v = pParse->pVdbe;
  int regOut = ++pParse->nMem;
  if( pSort->pDeferredRowLoad ){
    FUNC0(pParse, pSelect, pSort->pDeferredRowLoad);
  }
  FUNC1(v, OP_MakeRecord, regBase+nOBSat, nBase-nOBSat, regOut);
  return regOut;
}