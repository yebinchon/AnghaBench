#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oidvector ;
struct TYPE_5__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTSTRAP_SUPERUSERID ; 
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  F_FMGR_INTERNAL_VALIDATOR ; 
 int /*<<< orphan*/  INTERNALlanguageId ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  PROKIND_FUNCTION ; 
 int /*<<< orphan*/  PROPARALLEL_SAFE ; 
 int /*<<< orphan*/  PROVOLATILE_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC1 (char const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int FUNC3 (char const* const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *name, Oid namespace,
					  Oid rangeOid, Oid subtype)
{
	static const char *const prosrc[2] = {"range_constructor2",
	"range_constructor3"};
	static const int pronargs[2] = {2, 3};

	Oid			constructorArgTypes[3];
	ObjectAddress myself,
				referenced;
	int			i;

	constructorArgTypes[0] = subtype;
	constructorArgTypes[1] = subtype;
	constructorArgTypes[2] = TEXTOID;

	referenced.classId = TypeRelationId;
	referenced.objectId = rangeOid;
	referenced.objectSubId = 0;

	for (i = 0; i < FUNC3(prosrc); i++)
	{
		oidvector  *constructorArgTypesVector;

		constructorArgTypesVector = FUNC2(constructorArgTypes,
												   pronargs[i]);

		myself = FUNC1(name,	/* name: same as range type */
								 namespace, /* namespace */
								 false, /* replace */
								 false, /* returns set */
								 rangeOid,	/* return type */
								 BOOTSTRAP_SUPERUSERID, /* proowner */
								 INTERNALlanguageId,	/* language */
								 F_FMGR_INTERNAL_VALIDATOR, /* language validator */
								 prosrc[i], /* prosrc */
								 NULL,	/* probin */
								 PROKIND_FUNCTION,
								 false, /* security_definer */
								 false, /* leakproof */
								 false, /* isStrict */
								 PROVOLATILE_IMMUTABLE, /* volatility */
								 PROPARALLEL_SAFE,	/* parallel safety */
								 constructorArgTypesVector, /* parameterTypes */
								 FUNC0(NULL), /* allParameterTypes */
								 FUNC0(NULL), /* parameterModes */
								 FUNC0(NULL), /* parameterNames */
								 NIL,	/* parameterDefaults */
								 FUNC0(NULL), /* trftypes */
								 FUNC0(NULL), /* proconfig */
								 InvalidOid,	/* prosupport */
								 1.0,	/* procost */
								 0.0);	/* prorows */

		/*
		 * Make the constructors internally-dependent on the range type so
		 * that they go away silently when the type is dropped.  Note that
		 * pg_dump depends on this choice to avoid dumping the constructors.
		 */
		FUNC4(&myself, &referenced, DEPENDENCY_INTERNAL);
	}
}