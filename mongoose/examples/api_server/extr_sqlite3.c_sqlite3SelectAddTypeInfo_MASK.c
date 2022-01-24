#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w ;
struct TYPE_4__ {int bSelectDepthFirst; int /*<<< orphan*/ * pParse; int /*<<< orphan*/  xExprCallback; int /*<<< orphan*/  xSelectCallback; } ;
typedef  TYPE_1__ Walker ;
typedef  int /*<<< orphan*/  Select ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  exprWalkNoop ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  selectAddSubqueryTypeInfo ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(Parse *pParse, Select *pSelect){
#ifndef SQLITE_OMIT_SUBQUERY
  Walker w;
  FUNC0(&w, 0, sizeof(w));
  w.xSelectCallback = selectAddSubqueryTypeInfo;
  w.xExprCallback = exprWalkNoop;
  w.pParse = pParse;
  w.bSelectDepthFirst = 1;
  FUNC1(&w, pSelect);
#endif
}