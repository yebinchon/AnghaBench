#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* query_data; } ;
typedef  TYPE_1__ plperl_query_entry ;
struct TYPE_6__ {int /*<<< orphan*/  plan_cxt; int /*<<< orphan*/  plan; } ;
typedef  TYPE_2__ plperl_query_desc ;
struct TYPE_7__ {int /*<<< orphan*/  query_hash; } ;
typedef  int /*<<< orphan*/  SPIPlanPtr ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* plperl_active_interp ; 

void
FUNC5(char *query)
{
	SPIPlanPtr	plan;
	plperl_query_desc *qdesc;
	plperl_query_entry *hash_entry;

	FUNC2();

	hash_entry = FUNC4(plperl_active_interp->query_hash, query,
							 HASH_FIND, NULL);
	if (hash_entry == NULL)
		FUNC3(ERROR, "spi_freeplan: Invalid prepared query passed");

	qdesc = hash_entry->query_data;
	if (qdesc == NULL)
		FUNC3(ERROR, "spi_freeplan: plperl query_hash value vanished");
	plan = qdesc->plan;

	/*
	 * free all memory before SPI_freeplan, so if it dies, nothing will be
	 * left over
	 */
	FUNC4(plperl_active_interp->query_hash, query,
				HASH_REMOVE, NULL);

	FUNC0(qdesc->plan_cxt);

	FUNC1(plan);
}