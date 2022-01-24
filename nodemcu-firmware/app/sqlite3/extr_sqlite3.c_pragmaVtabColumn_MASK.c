#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_7__ {int iHidden; } ;
struct TYPE_6__ {int /*<<< orphan*/ * azArg; int /*<<< orphan*/  pPragma; } ;
typedef  TYPE_2__ PragmaVtabCursor ;
typedef  TYPE_3__ PragmaVtab ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
  sqlite3_vtab_cursor *pVtabCursor,
  sqlite3_context *ctx,
  int i
){
  PragmaVtabCursor *pCsr = (PragmaVtabCursor*)pVtabCursor;
  PragmaVtab *pTab = (PragmaVtab*)(pVtabCursor->pVtab);
  if( i<pTab->iHidden ){
    FUNC2(ctx, FUNC0(pCsr->pPragma, i));
  }else{
    FUNC1(ctx, pCsr->azArg[i-pTab->iHidden],-1,SQLITE_TRANSIENT);
  }
  return SQLITE_OK;
}