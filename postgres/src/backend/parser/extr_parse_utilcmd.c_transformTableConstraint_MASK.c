#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int contype; int /*<<< orphan*/  location; } ;
struct TYPE_6__ {void* fkconstraints; int /*<<< orphan*/  pstate; int /*<<< orphan*/  isforeign; void* ckconstraints; void* ixconstraints; int /*<<< orphan*/  ispartitioned; } ;
typedef  TYPE_1__ CreateStmtContext ;
typedef  TYPE_2__ Constraint ;

/* Variables and functions */
#define  CONSTR_ATTR_DEFERRABLE 139 
#define  CONSTR_ATTR_DEFERRED 138 
#define  CONSTR_ATTR_IMMEDIATE 137 
#define  CONSTR_ATTR_NOT_DEFERRABLE 136 
#define  CONSTR_CHECK 135 
#define  CONSTR_DEFAULT 134 
#define  CONSTR_EXCLUSION 133 
#define  CONSTR_FOREIGN 132 
#define  CONSTR_NOTNULL 131 
#define  CONSTR_NULL 130 
#define  CONSTR_PRIMARY 129 
#define  CONSTR_UNIQUE 128 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(CreateStmtContext *cxt, Constraint *constraint)
{
	switch (constraint->contype)
	{
		case CONSTR_PRIMARY:
			if (cxt->isforeign)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC3("primary key constraints are not supported on foreign tables"),
						 FUNC5(cxt->pstate,
											constraint->location)));
			cxt->ixconstraints = FUNC4(cxt->ixconstraints, constraint);
			break;

		case CONSTR_UNIQUE:
			if (cxt->isforeign)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC3("unique constraints are not supported on foreign tables"),
						 FUNC5(cxt->pstate,
											constraint->location)));
			cxt->ixconstraints = FUNC4(cxt->ixconstraints, constraint);
			break;

		case CONSTR_EXCLUSION:
			if (cxt->isforeign)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC3("exclusion constraints are not supported on foreign tables"),
						 FUNC5(cxt->pstate,
											constraint->location)));
			if (cxt->ispartitioned)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC3("exclusion constraints are not supported on partitioned tables"),
						 FUNC5(cxt->pstate,
											constraint->location)));
			cxt->ixconstraints = FUNC4(cxt->ixconstraints, constraint);
			break;

		case CONSTR_CHECK:
			cxt->ckconstraints = FUNC4(cxt->ckconstraints, constraint);
			break;

		case CONSTR_FOREIGN:
			if (cxt->isforeign)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC3("foreign key constraints are not supported on foreign tables"),
						 FUNC5(cxt->pstate,
											constraint->location)));
			cxt->fkconstraints = FUNC4(cxt->fkconstraints, constraint);
			break;

		case CONSTR_NULL:
		case CONSTR_NOTNULL:
		case CONSTR_DEFAULT:
		case CONSTR_ATTR_DEFERRABLE:
		case CONSTR_ATTR_NOT_DEFERRABLE:
		case CONSTR_ATTR_DEFERRED:
		case CONSTR_ATTR_IMMEDIATE:
			FUNC0(ERROR, "invalid context for constraint type %d",
				 constraint->contype);
			break;

		default:
			FUNC0(ERROR, "unrecognized constraint type: %d",
				 constraint->contype);
			break;
	}
}