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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  PLpgSQL_expr ;
typedef  int /*<<< orphan*/  PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  BOOLOID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(PLpgSQL_execstate *estate,
				  PLpgSQL_expr *expr,
				  bool *isNull)
{
	Datum		exprdatum;
	Oid			exprtypeid;
	int32		exprtypmod;

	exprdatum = FUNC2(estate, expr, isNull, &exprtypeid, &exprtypmod);
	exprdatum = FUNC1(estate, exprdatum, isNull,
								exprtypeid, exprtypmod,
								BOOLOID, -1);
	return FUNC0(exprdatum);
}