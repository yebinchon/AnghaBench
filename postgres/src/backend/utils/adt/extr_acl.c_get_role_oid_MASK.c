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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHNAME ; 
 int /*<<< orphan*/  Anum_pg_authid_oid ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

Oid
FUNC6(const char *rolname, bool missing_ok)
{
	Oid			oid;

	oid = FUNC1(AUTHNAME, Anum_pg_authid_oid,
						  FUNC0(rolname));
	if (!FUNC2(oid) && !missing_ok)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_UNDEFINED_OBJECT),
				 FUNC5("role \"%s\" does not exist", rolname)));
	return oid;
}