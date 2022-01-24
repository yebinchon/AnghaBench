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
struct statement {int lineno; void* name; int /*<<< orphan*/ * outlist; int /*<<< orphan*/  inlist; void* command; struct connection* connection; } ;
struct prepared_statement {int prepared; struct prepared_statement* next; struct statement* stmt; void* name; } ;
struct connection {struct prepared_statement* prep_stmts; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_COMPAT_PGSQL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct connection*,struct prepared_statement*,struct prepared_statement*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 struct prepared_statement* FUNC2 (void*,struct connection*,struct prepared_statement**) ; 
 int /*<<< orphan*/  FUNC3 (struct prepared_statement*) ; 
 void* FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct statement*,int /*<<< orphan*/ ,int) ; 

bool
FUNC6(struct statement *stmt)
{
	struct statement *prep_stmt;
	struct prepared_statement *this;
	struct connection *con = stmt->connection;
	struct prepared_statement *prev = NULL;
	int			lineno = stmt->lineno;

	/* check if we already have prepared this statement */
	this = FUNC2(stmt->name, con, &prev);
	if (this && !FUNC0(lineno, ECPG_COMPAT_PGSQL, con, prev, this))
		return false;

	/* allocate new statement */
	this = (struct prepared_statement *) FUNC1(sizeof(struct prepared_statement), lineno);
	if (!this)
		return false;

	prep_stmt = (struct statement *) FUNC1(sizeof(struct statement), lineno);
	if (!prep_stmt)
	{
		FUNC3(this);
		return false;
	}
	FUNC5(prep_stmt, 0, sizeof(struct statement));

	/* create statement */
	prep_stmt->lineno = lineno;
	prep_stmt->connection = con;
	prep_stmt->command = FUNC4(stmt->command, lineno);
	prep_stmt->inlist = *(prep_stmt->outlist = NULL);
	this->name = FUNC4(stmt->name, lineno);
	this->stmt = prep_stmt;
	this->prepared = true;

	if (con->prep_stmts == NULL)
		this->next = NULL;
	else
		this->next = con->prep_stmts;

	con->prep_stmts = this;
	return true;
}