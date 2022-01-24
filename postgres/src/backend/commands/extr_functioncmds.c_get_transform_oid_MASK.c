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
 int /*<<< orphan*/  Anum_pg_transform_oid ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRFTYPELANG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

Oid
FUNC8(Oid type_id, Oid lang_id, bool missing_ok)
{
	Oid			oid;

	oid = FUNC0(TRFTYPELANG, Anum_pg_transform_oid,
						  FUNC1(type_id),
						  FUNC1(lang_id));
	if (!FUNC2(oid) && !missing_ok)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_UNDEFINED_OBJECT),
				 FUNC5("transform for type %s language \"%s\" does not exist",
						FUNC6(type_id),
						FUNC7(lang_id, false))));
	return oid;
}