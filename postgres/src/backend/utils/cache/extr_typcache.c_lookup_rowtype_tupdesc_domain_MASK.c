#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {scalar_t__ typtype; int /*<<< orphan*/ * tupDesc; int /*<<< orphan*/  domainBaseTypmod; int /*<<< orphan*/  domainBaseType; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RECORDOID ; 
 int TYPECACHE_DOMAIN_BASE_INFO ; 
 int TYPECACHE_TUPDESC ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (scalar_t__,int) ; 

TupleDesc
FUNC8(Oid type_id, int32 typmod, bool noError)
{
	TupleDesc	tupDesc;

	if (type_id != RECORDOID)
	{
		/*
		 * Check for domain or named composite type.  We might as well load
		 * whichever data is needed.
		 */
		TypeCacheEntry *typentry;

		typentry = FUNC7(type_id,
									 TYPECACHE_TUPDESC |
									 TYPECACHE_DOMAIN_BASE_INFO);
		if (typentry->typtype == TYPTYPE_DOMAIN)
			return FUNC6(typentry->domainBaseType,
												  typentry->domainBaseTypmod,
												  noError);
		if (typentry->tupDesc == NULL && !noError)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC3("type %s is not composite",
							FUNC4(type_id))));
		tupDesc = typentry->tupDesc;
	}
	else
		tupDesc = FUNC5(type_id, typmod, noError);
	if (tupDesc != NULL)
		FUNC0(tupDesc);
	return tupDesc;
}