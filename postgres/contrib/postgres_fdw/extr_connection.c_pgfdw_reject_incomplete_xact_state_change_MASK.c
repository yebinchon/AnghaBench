#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  key; int /*<<< orphan*/  changing_xact_state; int /*<<< orphan*/ * conn; } ;
struct TYPE_8__ {int /*<<< orphan*/  servername; } ;
struct TYPE_7__ {int /*<<< orphan*/  umserver; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_user_mapping ;
typedef  TYPE_2__ ForeignServer ;
typedef  TYPE_3__ ConnCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONNECTION_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USERMAPPINGOID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(ConnCacheEntry *entry)
{
	HeapTuple	tup;
	Form_pg_user_mapping umform;
	ForeignServer *server;

	/* nothing to do for inactive entries and entries of sane state */
	if (entry->conn == NULL || !entry->changing_xact_state)
		return;

	/* make sure this entry is inactive */
	FUNC6(entry);

	/* find server name to be shown in the message below */
	tup = FUNC5(USERMAPPINGOID,
						  FUNC3(entry->key));
	if (!FUNC2(tup))
		FUNC7(ERROR, "cache lookup failed for user mapping %u", entry->key);
	umform = (Form_pg_user_mapping) FUNC0(tup);
	server = FUNC1(umform->umserver);
	FUNC4(tup);

	FUNC8(ERROR,
			(FUNC9(ERRCODE_CONNECTION_EXCEPTION),
			 FUNC10("connection to server \"%s\" was lost",
					server->servername)));
}