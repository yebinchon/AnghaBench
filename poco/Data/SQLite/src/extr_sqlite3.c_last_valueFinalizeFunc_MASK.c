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
struct LastValueCtx {scalar_t__ pVal; } ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(sqlite3_context *pCtx){
  struct LastValueCtx *p;
  p = (struct LastValueCtx*)FUNC0(pCtx, sizeof(*p));
  if( p && p->pVal ){
    FUNC1(pCtx, p->pVal);
    FUNC2(p->pVal);
    p->pVal = 0;
  }
}