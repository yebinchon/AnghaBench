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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,char const* const*,int const*,int const*,int) ; 

PGresult *
FUNC3(PGconn *conn,
			   const char *stmtName,
			   int nParams,
			   const char *const *paramValues,
			   const int *paramLengths,
			   const int *paramFormats,
			   int resultFormat)
{
	if (!FUNC1(conn))
		return NULL;
	if (!FUNC2(conn, stmtName,
							 nParams, paramValues, paramLengths,
							 paramFormats, resultFormat))
		return NULL;
	return FUNC0(conn);
}