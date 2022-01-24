#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ op; int /*<<< orphan*/  pRight; int /*<<< orphan*/  pLeft; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQLITE_Transitive ; 
 scalar_t__ TK_EQ ; 
 scalar_t__ TK_IS ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static int FUNC7(Parse *pParse, Expr *pExpr){
  char aff1, aff2;
  CollSeq *pColl;
  if( !FUNC1(pParse->db, SQLITE_Transitive) ) return 0;
  if( pExpr->op!=TK_EQ && pExpr->op!=TK_IS ) return 0;
  if( FUNC0(pExpr, EP_FromJoin) ) return 0;
  aff1 = FUNC3(pExpr->pLeft);
  aff2 = FUNC3(pExpr->pRight);
  if( aff1!=aff2
   && (!FUNC6(aff1) || !FUNC6(aff2))
  ){
    return 0;
  }
  pColl = FUNC2(pParse, pExpr->pLeft, pExpr->pRight);
  if( FUNC5(pColl) ) return 1;
  return FUNC4(pParse, pExpr->pLeft, pExpr->pRight);
}