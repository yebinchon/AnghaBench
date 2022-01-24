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
typedef  int /*<<< orphan*/  Constraint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_method ; 
 int /*<<< orphan*/  conname ; 
 int /*<<< orphan*/  contype ; 
 int /*<<< orphan*/  cooked_expr ; 
 int /*<<< orphan*/  deferrable ; 
 int /*<<< orphan*/  exclusions ; 
 int /*<<< orphan*/  fk_attrs ; 
 int /*<<< orphan*/  fk_del_action ; 
 int /*<<< orphan*/  fk_matchtype ; 
 int /*<<< orphan*/  fk_upd_action ; 
 int /*<<< orphan*/  generated_when ; 
 int /*<<< orphan*/  including ; 
 int /*<<< orphan*/  indexname ; 
 int /*<<< orphan*/  indexspace ; 
 int /*<<< orphan*/  initdeferred ; 
 int /*<<< orphan*/  initially_valid ; 
 int /*<<< orphan*/  is_no_inherit ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  old_conpfeqop ; 
 int /*<<< orphan*/  old_pktable_oid ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  pk_attrs ; 
 int /*<<< orphan*/  pktable ; 
 int /*<<< orphan*/  raw_expr ; 
 int /*<<< orphan*/  reset_default_tblspc ; 
 int /*<<< orphan*/  skip_validation ; 
 int /*<<< orphan*/  where_clause ; 

__attribute__((used)) static bool
FUNC4(const Constraint *a, const Constraint *b)
{
	FUNC2(contype);
	FUNC3(conname);
	FUNC2(deferrable);
	FUNC2(initdeferred);
	FUNC0(location);
	FUNC2(is_no_inherit);
	FUNC1(raw_expr);
	FUNC3(cooked_expr);
	FUNC2(generated_when);
	FUNC1(keys);
	FUNC1(including);
	FUNC1(exclusions);
	FUNC1(options);
	FUNC3(indexname);
	FUNC3(indexspace);
	FUNC2(reset_default_tblspc);
	FUNC3(access_method);
	FUNC1(where_clause);
	FUNC1(pktable);
	FUNC1(fk_attrs);
	FUNC1(pk_attrs);
	FUNC2(fk_matchtype);
	FUNC2(fk_upd_action);
	FUNC2(fk_del_action);
	FUNC1(old_conpfeqop);
	FUNC2(old_pktable_oid);
	FUNC2(skip_validation);
	FUNC2(initially_valid);

	return true;
}