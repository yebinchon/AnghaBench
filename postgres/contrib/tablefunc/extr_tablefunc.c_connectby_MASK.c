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
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  AttInMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static Tuplestorestate *
FUNC6(char *relname,
		  char *key_fld,
		  char *parent_key_fld,
		  char *orderby_fld,
		  char *branch_delim,
		  char *start_with,
		  int max_depth,
		  bool show_branch,
		  bool show_serial,
		  MemoryContext per_query_ctx,
		  bool randomAccess,
		  AttInMetadata *attinmeta)
{
	Tuplestorestate *tupstore = NULL;
	int			ret;
	MemoryContext oldcontext;

	int			serial = 1;

	/* Connect to SPI manager */
	if ((ret = FUNC1()) < 0)
		/* internal error */
		FUNC4(ERROR, "connectby: SPI_connect returned %d", ret);

	/* switch to longer term context to create the tuple store */
	oldcontext = FUNC0(per_query_ctx);

	/* initialize our tuplestore */
	tupstore = FUNC5(randomAccess, false, work_mem);

	FUNC0(oldcontext);

	/* now go get the whole tree */
	FUNC3(key_fld,
								 parent_key_fld,
								 relname,
								 orderby_fld,
								 branch_delim,
								 start_with,
								 start_with,	/* current_branch */
								 0, /* initial level is 0 */
								 &serial,	/* initial serial is 1 */
								 max_depth,
								 show_branch,
								 show_serial,
								 per_query_ctx,
								 attinmeta,
								 tupstore);

	FUNC2();

	return tupstore;
}