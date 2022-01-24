#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct LastValueCtx {scalar_t__ pVal; int /*<<< orphan*/  nVal; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct LastValueCtx *p;
  FUNC0(nArg);
  p = (struct LastValueCtx*)FUNC1(pCtx, sizeof(*p));
  if( p ){
    FUNC4(p->pVal);
    p->pVal = FUNC3(apArg[0]);
    if( p->pVal==0 ){
      FUNC2(pCtx);
    }else{
      p->nVal++;
    }
  }
}