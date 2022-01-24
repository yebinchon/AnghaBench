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
typedef  int /*<<< orphan*/  w ;
struct TYPE_5__ {int iCur; } ;
struct TYPE_6__ {int eCode; TYPE_1__ u; int /*<<< orphan*/  xSelectCallback; int /*<<< orphan*/  xExprCallback; } ;
typedef  TYPE_2__ Walker ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  exprNodeIsConstant ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  selectNodeIsConstant ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(Expr *p, int initFlag, int iCur){
  Walker w;
  FUNC0(&w, 0, sizeof(w));
  w.eCode = initFlag;
  w.xExprCallback = exprNodeIsConstant;
  w.xSelectCallback = selectNodeIsConstant;
  w.u.iCur = iCur;
  FUNC1(&w, p);
  return w.eCode;
}