#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ typcat; } ;
struct TYPE_7__ {int /*<<< orphan*/  flinfo; } ;
struct TYPE_6__ {TYPE_3__ c; int /*<<< orphan*/  fn_mcxt; int /*<<< orphan*/  argtype; } ;
typedef  TYPE_1__ PopulateRecordCache ;
typedef  TYPE_2__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ TYPECAT_COMPOSITE ; 
 scalar_t__ TYPECAT_COMPOSITE_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(FunctionCallInfo fcinfo,
							  const char *funcname,
							  PopulateRecordCache *cache)
{
	cache->argtype = FUNC3(fcinfo->flinfo, 0);
	FUNC4(&cache->c,
						 cache->argtype, -1,
						 cache->fn_mcxt, false);
	if (cache->c.typcat != TYPECAT_COMPOSITE &&
		cache->c.typcat != TYPECAT_COMPOSITE_DOMAIN)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_DATATYPE_MISMATCH),
		/* translator: %s is a function name, eg json_to_record */
				 FUNC2("first argument of %s must be a row type",
						funcname)));
}