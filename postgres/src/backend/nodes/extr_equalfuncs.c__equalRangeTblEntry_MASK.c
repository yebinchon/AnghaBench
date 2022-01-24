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
typedef  int /*<<< orphan*/  RangeTblEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  checkAsUser ; 
 int /*<<< orphan*/  colcollations ; 
 int /*<<< orphan*/  coltypes ; 
 int /*<<< orphan*/  coltypmods ; 
 int /*<<< orphan*/  ctelevelsup ; 
 int /*<<< orphan*/  ctename ; 
 int /*<<< orphan*/  enrname ; 
 int /*<<< orphan*/  enrtuples ; 
 int /*<<< orphan*/  eref ; 
 int /*<<< orphan*/  extraUpdatedCols ; 
 int /*<<< orphan*/  funcordinality ; 
 int /*<<< orphan*/  functions ; 
 int /*<<< orphan*/  inFromCl ; 
 int /*<<< orphan*/  inh ; 
 int /*<<< orphan*/  insertedCols ; 
 int /*<<< orphan*/  joinaliasvars ; 
 int /*<<< orphan*/  jointype ; 
 int /*<<< orphan*/  lateral ; 
 int /*<<< orphan*/  relid ; 
 int /*<<< orphan*/  relkind ; 
 int /*<<< orphan*/  rellockmode ; 
 int /*<<< orphan*/  requiredPerms ; 
 int /*<<< orphan*/  rtekind ; 
 int /*<<< orphan*/  securityQuals ; 
 int /*<<< orphan*/  security_barrier ; 
 int /*<<< orphan*/  selectedCols ; 
 int /*<<< orphan*/  self_reference ; 
 int /*<<< orphan*/  subquery ; 
 int /*<<< orphan*/  tablefunc ; 
 int /*<<< orphan*/  tablesample ; 
 int /*<<< orphan*/  updatedCols ; 
 int /*<<< orphan*/  values_lists ; 

__attribute__((used)) static bool
FUNC4(const RangeTblEntry *a, const RangeTblEntry *b)
{
	FUNC2(rtekind);
	FUNC2(relid);
	FUNC2(relkind);
	FUNC2(rellockmode);
	FUNC1(tablesample);
	FUNC1(subquery);
	FUNC2(security_barrier);
	FUNC2(jointype);
	FUNC1(joinaliasvars);
	FUNC1(functions);
	FUNC2(funcordinality);
	FUNC1(tablefunc);
	FUNC1(values_lists);
	FUNC3(ctename);
	FUNC2(ctelevelsup);
	FUNC2(self_reference);
	FUNC1(coltypes);
	FUNC1(coltypmods);
	FUNC1(colcollations);
	FUNC3(enrname);
	FUNC2(enrtuples);
	FUNC1(alias);
	FUNC1(eref);
	FUNC2(lateral);
	FUNC2(inh);
	FUNC2(inFromCl);
	FUNC2(requiredPerms);
	FUNC2(checkAsUser);
	FUNC0(selectedCols);
	FUNC0(insertedCols);
	FUNC0(updatedCols);
	FUNC0(extraUpdatedCols);
	FUNC1(securityQuals);

	return true;
}