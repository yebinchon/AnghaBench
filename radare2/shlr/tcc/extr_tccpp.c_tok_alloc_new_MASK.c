#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int len; char* str; int /*<<< orphan*/ * hash_next; int /*<<< orphan*/ * sym_identifier; int /*<<< orphan*/ * sym_struct; int /*<<< orphan*/ * sym_label; int /*<<< orphan*/ * sym_define; scalar_t__ tok; } ;
typedef  TYPE_1__ TokenSym ;

/* Variables and functions */
 scalar_t__ SYM_FIRST_ANOM ; 
 int TOK_ALLOC_INCR ; 
 scalar_t__ TOK_IDENT ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 TYPE_1__** FUNC2 (TYPE_1__**,int) ; 
 TYPE_1__** table_ident ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ tok_ident ; 

__attribute__((used)) static TokenSym *FUNC4(TokenSym **pts, const char *str, int len)
{
	TokenSym *ts, **ptable;
	int i;

	if (tok_ident >= SYM_FIRST_ANOM) {
		FUNC3 ("memory full");
	}

	/* expand token table if needed */
	i = tok_ident - TOK_IDENT;
	if ((i % TOK_ALLOC_INCR) == 0) {
		ptable = FUNC2 (table_ident, (i + TOK_ALLOC_INCR) * sizeof(TokenSym *));
		table_ident = ptable;
	}
	ts = FUNC0 (sizeof(TokenSym) + len);
	table_ident[i] = ts;
	ts->tok = tok_ident++;
	ts->sym_define = NULL;
	ts->sym_label = NULL;
	ts->sym_struct = NULL;
	ts->sym_identifier = NULL;
	ts->len = len;
	ts->hash_next = NULL;
	FUNC1 (ts->str, str, len);
	ts->str[len] = '\0';
	*pts = ts;
	return ts;
}