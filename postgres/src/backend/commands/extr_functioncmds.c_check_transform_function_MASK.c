#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* values; } ;
struct TYPE_5__ {scalar_t__ provolatile; scalar_t__ prokind; int pronargs; TYPE_1__ proargtypes; scalar_t__ proretset; } ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INTERNALOID ; 
 scalar_t__ PROKIND_FUNCTION ; 
 scalar_t__ PROVOLATILE_VOLATILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(Form_pg_proc procstruct)
{
	if (procstruct->provolatile == PROVOLATILE_VOLATILE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC2("transform function must not be volatile")));
	if (procstruct->prokind != PROKIND_FUNCTION)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC2("transform function must be a normal function")));
	if (procstruct->proretset)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC2("transform function must not return a set")));
	if (procstruct->pronargs != 1)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC2("transform function must take one argument")));
	if (procstruct->proargtypes.values[0] != INTERNALOID)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC2("first argument of transform function must be type %s",
						"internal")));
}