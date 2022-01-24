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
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  TK_NULL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Expr *FUNC4(Parse *pParse, Expr *pExpr){
  if( 0==FUNC2(pExpr) ){
    if( IN_RENAME_OBJECT ) FUNC3(pParse, pExpr);
    FUNC1(pParse->db, pExpr);
    pExpr = FUNC0(pParse->db, TK_NULL, 0, 0);
  }
  return pExpr;
}