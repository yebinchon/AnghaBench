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
struct statement {int lineno; int prepared; struct statement* next; struct statement* command; struct statement* name; int /*<<< orphan*/  compat; struct connection* connection; struct statement* stmt; int /*<<< orphan*/ * outlist; int /*<<< orphan*/  inlist; } ;
struct prepared_statement {int lineno; int prepared; struct prepared_statement* next; struct prepared_statement* command; struct prepared_statement* name; int /*<<< orphan*/  compat; struct connection* connection; struct prepared_statement* stmt; int /*<<< orphan*/ * outlist; int /*<<< orphan*/  inlist; } ;
struct connection {struct statement* prep_stmts; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,struct statement*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct statement*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*,struct statement*) ; 
 void* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct statement**,int) ; 

__attribute__((used)) static bool
FUNC8(int lineno, struct connection *con, const char *name, const char *variable)
{
	struct statement *stmt;
	struct prepared_statement *this;
	PGresult   *query;

	/* allocate new statement */
	this = (struct prepared_statement *) FUNC2(sizeof(struct prepared_statement), lineno);
	if (!this)
		return false;

	stmt = (struct statement *) FUNC2(sizeof(struct statement), lineno);
	if (!stmt)
	{
		FUNC4(this);
		return false;
	}

	/* create statement */
	stmt->lineno = lineno;
	stmt->connection = con;
	stmt->command = FUNC6(variable, lineno);
	stmt->inlist = *(stmt->outlist = NULL);

	/* if we have C variables in our statement replace them with '?' */
	FUNC7(&(stmt->command), lineno);

	/* add prepared statement to our list */
	this->name = FUNC6(name, lineno);
	this->stmt = stmt;

	/* and finally really prepare the statement */
	query = FUNC1(stmt->connection->connection, name, stmt->command, 0, NULL);
	if (!FUNC3(query, stmt->lineno, stmt->connection->connection, stmt->compat))
	{
		FUNC4(stmt->command);
		FUNC4(this->name);
		FUNC4(this);
		FUNC4(stmt);
		return false;
	}

	FUNC5("prepare_common on line %d: name %s; query: \"%s\"\n", stmt->lineno, name, stmt->command);
	FUNC0(query);
	this->prepared = true;

	if (con->prep_stmts == NULL)
		this->next = NULL;
	else
		this->next = con->prep_stmts;

	con->prep_stmts = this;
	return true;
}