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

/* Variables and functions */
 int TOK_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * macro_ptr ; 
 int /*<<< orphan*/  nb_sym_pools ; 
 int /*<<< orphan*/ * sym_free_first ; 
 int /*<<< orphan*/  sym_pools ; 
 int /*<<< orphan*/ ***** table_ident ; 
 int /*<<< orphan*/ * tcc_state ; 
 int tok_ident ; 
 int /*<<< orphan*/  tokcstr ; 

__attribute__((used)) static void FUNC4(void)
{
	int i, n;
	if (NULL == tcc_state) {
		return;
	}
	tcc_state = NULL;

	/* free -D defines */
	FUNC3 (NULL);

	/* free tokens */
	n = tok_ident - TOK_IDENT;
	for (i = 0; i < n; i++) {
		FUNC2 (&table_ident[i]);
	}
	FUNC2 (table_ident);

	/* free sym_pools */
	FUNC1 (&sym_pools, &nb_sym_pools);
	/* string buffer */
	FUNC0 (&tokcstr);
	/* reset symbol stack */
	sym_free_first = NULL;
	/* cleanup from error/setjmp */
	macro_ptr = NULL;
}