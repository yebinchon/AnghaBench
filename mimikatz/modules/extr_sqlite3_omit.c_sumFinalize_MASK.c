#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {scalar_t__ cnt; int /*<<< orphan*/  iSum; int /*<<< orphan*/  rSum; scalar_t__ approx; scalar_t__ overflow; } ;
typedef  TYPE_1__ SumCtx ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3_context *context){
  SumCtx *p;
  p = FUNC0(context, 0);
  if( p && p->cnt>0 ){
    if( p->overflow ){
      FUNC2(context,"integer overflow",-1);
    }else if( p->approx ){
      FUNC1(context, p->rSum);
    }else{
      FUNC3(context, p->iSum);
    }
  }
}