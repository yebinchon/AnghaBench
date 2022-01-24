#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/  pAndInfo; int /*<<< orphan*/  pOrInfo; } ;
struct TYPE_9__ {int wtFlags; TYPE_1__ u; int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_3__ WhereTerm ;
struct TYPE_10__ {int nTerm; TYPE_3__* a; TYPE_3__* aStatic; TYPE_2__* pParse; } ;
typedef  TYPE_4__ WhereClause ;
struct TYPE_8__ {int /*<<< orphan*/ * db; } ;

/* Variables and functions */
 int TERM_ANDINFO ; 
 int TERM_DYNAMIC ; 
 int TERM_ORINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(WhereClause *pWC){
  int i;
  WhereTerm *a;
  sqlite3 *db = pWC->pParse->db;
  for(i=pWC->nTerm-1, a=pWC->a; i>=0; i--, a++){
    if( a->wtFlags & TERM_DYNAMIC ){
      FUNC1(db, a->pExpr);
    }
    if( a->wtFlags & TERM_ORINFO ){
      FUNC3(db, a->u.pOrInfo);
    }else if( a->wtFlags & TERM_ANDINFO ){
      FUNC2(db, a->u.pAndInfo);
    }
  }
  if( pWC->a!=pWC->aStatic ){
    FUNC0(db, pWC->a);
  }
}