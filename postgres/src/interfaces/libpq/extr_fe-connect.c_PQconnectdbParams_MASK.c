#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ status; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 TYPE_1__* FUNC0 (char const* const*,char const* const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

PGconn *
FUNC2(const char *const *keywords,
				  const char *const *values,
				  int expand_dbname)
{
	PGconn	   *conn = FUNC0(keywords, values, expand_dbname);

	if (conn && conn->status != CONNECTION_BAD)
		(void) FUNC1(conn);

	return conn;

}